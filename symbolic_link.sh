#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")/bin" && pwd)"

for dotfile in "${SCRIPT_DIR}"/.??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/bin/.config/system/sudo_local" ]] && continue

    ln -fnsv "$dotfile" "$HOME"
done
