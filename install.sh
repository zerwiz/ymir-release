#!/usr/bin/env bash
# Ymir — official installer bootstrap.
#
#   curl -fsSL https://get.ymir.sh | bash
#   curl -fsSL https://get.ymir.sh | bash -s -- --check
#
# Fetches the distro into $YMIR_HOME, then runs its installer. It never needs
# secrets and never touches private material (which is untracked in the distro).
set -euo pipefail

YMIR_HOME="${YMIR_HOME:-$HOME/.ymir}"
YMIR_REPO="${YMIR_REPO:-https://github.com/zerwiz/ymir.git}"
YMIR_BRANCH="${YMIR_BRANCH:-main}"

say(){ printf 'ymir: %s\n' "$*"; }
die(){ printf 'ymir: %s\n' "$*" >&2; exit 1; }

for c in git curl; do
  command -v "$c" >/dev/null 2>&1 || die "missing required tool: $c"
done

if [ -d "$YMIR_HOME/.git" ]; then
  say "updating the distro in $YMIR_HOME"
  git -C "$YMIR_HOME" fetch --quiet origin "$YMIR_BRANCH"
  git -C "$YMIR_HOME" checkout --quiet "$YMIR_BRANCH"
  git -C "$YMIR_HOME" pull --quiet --ff-only
else
  [ -e "$YMIR_HOME" ] && die "$YMIR_HOME exists and is not a git checkout"
  say "cloning the distro into $YMIR_HOME"
  git clone --quiet --branch "$YMIR_BRANCH" "$YMIR_REPO" "$YMIR_HOME"
fi

[ -f "$YMIR_HOME/bin/ymir-install.sh" ] || die "installer not found: $YMIR_HOME/bin/ymir-install.sh"
say "running the installer"
exec bash "$YMIR_HOME/bin/ymir-install.sh" "$@"
