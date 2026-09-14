# Ymir — official download

The **front door** to the Ymir distro: one command to install it locally on your
own machine. No hosting, no accounts — a local install first.

```bash
# curl
curl -fsSL https://get.ymir.sh | bash

# npm
npx ymir init
```

Both run the **same** thing: fetch the distro, then run its installer
(`bin/ymir-install.sh`), which stands the whole system up and validates it.

## What it does

```
1. checks prereqs (git, curl) and clones/updates the distro into $YMIR_HOME (default ~/.ymir)
2. runs  bash ~/.ymir/bin/ymir-install.sh "$@"
3. the installer is idempotent: it asks before it writes, self-heals what it can,
   and reports honestly what it cannot
```

## Environment

```
YMIR_HOME     where the distro lives        (default: ~/.ymir)
YMIR_REPO     the distro git remote         (default: https://github.com/zerwiz/ymir.git)
YMIR_BRANCH   the branch to track           (default: main)
```

## The distro

This repo only carries the **bootstrap** (`install.sh` + the `ymir` npm bin). The
system itself lives in [`zerwiz/ymir`](https://github.com/zerwiz/ymir).

## License

Apache-2.0 — see [LICENSE](LICENSE).
