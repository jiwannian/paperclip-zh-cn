#!/usr/bin/env bash
set -euo pipefail

repo_root="${1:-.}"
script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
patch_file="${script_dir}/paperclip-zh-cn.patch"

git -C "${repo_root}" rev-parse --is-inside-work-tree >/dev/null
git -C "${repo_root}" apply --reverse --check "${patch_file}"
git -C "${repo_root}" apply --reverse "${patch_file}"
printf 'Paperclip 简体中文补丁已回滚：%s\n' "${repo_root}"
