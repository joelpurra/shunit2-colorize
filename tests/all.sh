#!/usr/bin/env bash


function testFailedColors () {
	assertEquals 'This will fail' 'true' 'false'
}


source "${BASH_SOURCE%/*}/../src/shunit2-colorize.sh"

# Requires shUnit2.
# https://code.google.com/p/shunit2/
[[ -z $(which shunit2) ]] && { echo "shunit2 is required." >&2; exit 1; }
source shunit2 |& colorizeShUnit2
