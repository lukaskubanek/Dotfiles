#!/usr/bin/env bash

BASE_DIR=$(cd $(dirname "$0") && pwd)
SOURCE_DIR="${BASE_DIR}"
TARGET_DIR="${HOME}/Library/Keyboard Layouts"

find "${SOURCE_DIR}" -type f | while read filepath; do
    filename=$(basename "${filepath}")
    cp "${SOURCE_DIR}/${filename}" "${TARGET_DIR}"
done
