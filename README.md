# @zerwiz/ymir

> **The front door to Ymir** — a local, self-hosted, multi-agent AI runtime.
> One command to stand it up on your own machine.

```bash
# curl
curl -fsSL https://raw.githubusercontent.com/zerwiz/ymir-release/main/install.sh | bash

# npm
npx @zerwiz/ymir
```

Both do the same thing: fetch the Ymir distro, then run its installer — which
provisions, self-heals, and **validates** what it claims is running.

---

## What is Ymir?

A **brutal multi-agent AI runtime** where autonomous smiths forge code inside
sealed sandboxes and persistent vector-memory wells. It is one program, carved
into realms: a fleet of named agents, isolated git worktrees, an append-only
audit ledger, and an anti-hallucination gate — all on hardware you own.

Norse myth is **structural allegory**, not decoration. Every name explains a job:

| Name | What it is |
|---|---|
| **Ymir** | the substrate — one program, one machine, all realms carved from it |
| **Brokk** | the primary agent — the bellows that drives the forge |
| **Eindri** | isolated worker agents — smiths in sealed sandboxes |
| **Utgard** | the sandbox — untrusted code runs there, never in the halls |
| **Yggdrasil** | git worktrees — parallel branches, zero collision |
| **Mimirsbrunn** | the memory well — vector + full-text + local embeddings |
| **Ratatoskr** | the message bus — the agent-to-agent backbone (A2A 1.0) |
| **Runes** | the append-only audit ledger — a rune once carved is never un-carved |
| **Hlidskjalf** | the control plane — the high seat that sees every realm |
| **Sessrúmnir** | the seat-hall — where you converse with the fleet |

## Install

```
Requirements: git · curl · node ≥ 18 (for the npm route) · bun/docker (the
installer provisions what it can, and reports honestly what it cannot)
```

```
YMIR_HOME     where the distro lives     (default ~/.ymir)
YMIR_REPO     the distro git remote      (default https://github.com/zerwiz/ymir.git)
YMIR_BRANCH   the branch to track        (default main)
```

Run it non-interactively, or just ask what it would do:

```bash
npx @zerwiz/ymir --check     # report only — no writes, no prompt
npx @zerwiz/ymir --yes       # non-interactive
```

The installer is **idempotent**: run it again and it heals forward rather than
duplicating. It asks before it writes and validates at the end.

## It is early

Ymir is in **alpha**. The forge is hot and the anvil works, but expect rough
edges — and do not run it as a public service yet (auth hardens with Heimdall).

## This package

This npm package is only the **bootstrap** — `install.sh` plus a thin
`ymir` bin. The system itself lives in the distro repo. This package carries no
secrets and no private material.

## Open source, with gratitude

Ymir is **Apache-2.0**. It is a Norse shell over other people's excellent work —
we did not build the engines, we built the hall around them, and we name them
proudly: **treehouse · sandcastle · no-mistakes · pi · oh-my-pi · hermes-agent ·
pi-desktop · A2A**, and the kunchenguid family (**firstmate · axi · lavish-axi**).

Their licences are honoured in full in `NOTICE` and `THIRD-PARTY-LICENSES`.

---

<p align="center"><em>Hammered steel, raw iron, and obsidian runes.
Step up to the forge and carve your own worlds from Ymir's frame.</em></p>
