#!/usr/bin/env bash
# Generates loader.user.js pinned to a git tag and verified by SHA-256.
# Usage: ./scripts/make-loader.sh <github_user> <repo> <tag>
# Example: ./scripts/make-loader.sh by_me1 row-tools v0.0.1
set -euo pipefail
[ $# -eq 3 ] || { echo "usage: $0 <github_user> <repo> <tag>"; exit 1; }
USER_NAME="$1"; REPO="$2"; TAG="$3"
cd "$(dirname "$0")/.."
HASH="$(sha256sum script.js | cut -d' ' -f1)"
VERSION="${TAG#v}"
cat > loader.user.js <<LOADER
// ==UserScript==
// @name         row tools
// @namespace    https://github.com/${USER_NAME}/${REPO}
// @version      ${VERSION}
// @description  Loads row tools (pinned to ${TAG} and hash-verified)
// @author       by_me1
// @match        https://discord.com/*
// @run-at       document-idle
// @grant        none
// @noframes
// @require      https://cdn.jsdelivr.net/gh/${USER_NAME}/${REPO}@${TAG}/script.js#sha256=${HASH}
// ==/UserScript==

(function () {
    'use strict';
    console.log('row tools loaded via @require!');
})();
LOADER
echo "Wrote loader.user.js"
echo "sha256: ${HASH}"
