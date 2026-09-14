# Releasing

How a Ymir release is cut. Follow it in order — every step is a gate.

## The state we start from (until further notice)

- **The distro `zerwiz/ymir` is PRIVATE.** It stays private for now, so `curl` and
  `npx` only work for **you and invitees** — a stranger's clone 404s. The READMEs
  must say this plainly, and the release note must repeat it.
- The **public** surface is `zerwiz/ymir-release` (the bootstrap + npm package).

## Before a release

```
pre[7]{n,check}:
  "1","tests pass end to end — bin/ymir-install.sh --check on a clean host, and the live routes answer 200"
  "2","no secret is tracked: secret-guard + private-guard + public-guard all pass"
  "3","private material lives only in hodd/ (untracked); nothing private in the public repo"
  "4","THIRD-PARTY-LICENSES and NOTICE name every dependency we touch, with licences"
  "5","the READMEs match the ACTUAL state (private distro, alpha, invite-only) — no aspiration"
  "6","CHANGELOG.md has an entry for this version (append-only; never rewrite an entry)"
  "7","the branch is merged to main, and main is green"
```

## Cutting the release

```
cut[6]{n,do}:
  "1","bump the version in package.json (npm version patch|minor|major --no-git-tag-version)"
  "2","run it once for real: npx ./ install.sh | bash  (a smoke install on a scratch YMIR_HOME)"
  "3","commit: 'release: <version>'"
  "4","push the branch, open a PR, and let main's protection review it — never push main directly"
  "5","publish: npm publish --access public"
  "6","verify it truly landed: curl registry.npmjs.org/@zerwiz/ymir  → 200, then a real
       npm i @zerwiz/ymir into a scratch folder and run the bin"
```

## After a release

```
post[4]{n,do}:
  "1","tag the distro: git tag v<version> && git push --tags"
  "2","write the release note — what changed, what is NOT ready, the invite-only caveat"
  "3","update CHANGELOG.md (append) and the README's version line"
  "4","confirm the public surface is exactly ONE repo (ymir-release); delete any stray public repo"
```

## The invariants we never break

```
law[5]{rule}:
  "no secret is ever committed — guards are law, not suggestions"
  "no private path (hodd/, tenants, state/, svartalfaheim internals) is ever published"
  "main is protected — every change lands by PR"
  "every dependency is credited in NOTICE + THIRD-PARTY-LICENSES"
  "the README never claims more than is true — especially about who can install it"
```
