#!/usr/bin/env node
// npx ymir [init] [--check ...]  — the same local install as the curl bootstrap.
import { spawnSync } from 'node:child_process';
import { existsSync } from 'node:fs';
import { fileURLToPath } from 'node:url';
import { dirname, join } from 'node:path';

const here = dirname(fileURLToPath(import.meta.url));
const sh = join(here, '..', 'install.sh');

if (!existsSync(sh)) {
  console.error('ymir: install.sh is missing from the package');
  process.exit(1);
}

const args = process.argv.slice(2);
if (args[0] === 'init' || args[0] === 'install') args.shift();

const r = spawnSync('bash', [sh, ...args], { stdio: 'inherit' });
process.exit(typeof r.status === 'number' ? r.status : 1);
