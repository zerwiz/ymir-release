# Contributing

Thank you for wanting to help. Ymir is a hobby project made with love — and it is
much better with company. Whether you found a bug, want a feature, or just want to
tidy a line, you are welcome.

## The short version

```
1. Fork the repo
2. Branch off main      (git checkout -b fix/thing)
3. Make your change small and focused
4. Open a Pull Request  — main is protected; nothing lands without a PR
5. Be kind in review. We are all here for the craft.
```

**Never push to `main`.** It is protected on purpose: every change arrives by Pull
Request, so it can be read before it is merged. A fork + branch + PR is the way.

## What we welcome

```
good[6]{kind,note}:
  "bug reports","open an issue with what you ran, what you saw, what you expected"
  "docs fixes","typos, clarity, a better sentence — small PRs are the best PRs"
  "new skills","add one under .agents/skills/ with a SKILL.md, and register it"
  "adapter work","a new harness or terminal backend"
  "tests","anything that makes the installer or a gate more honest"
  "translations of the README","if you want to carry the lore into another tongue"
```

## Ground rules

- **One change per PR.** Small and reviewable beats large and clever.
- **Run it before you send it.** If you touched the installer, run
  `bin/ymir-install.sh --check` and paste the output.
- **No secrets, ever.** Credentials live in `.env.local` / the private hoard, never
  in a commit. The repo has guards; they will refuse a secret, and that is a feature.
- **Keep the naming law.** Subsystems are named for the Norse figure whose role
  matches the job. If you add one, name it true — see `docs/lore.md`.
- **Credit others.** If you build on someone's work, name them in `NOTICE`.

## Licensing of contributions

By opening a PR you agree your contribution is licensed under the project's licence
(**Apache-2.0**), and that you have the right to submit it.

## The spirit of it

Be decent. Assume good faith. Explain your reasoning. We would rather merge a plain,
honest, small thing than a grand one nobody can read.

*The forge is hot because you lit it. Welcome.*
