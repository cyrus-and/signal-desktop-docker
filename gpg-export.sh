#!/bin/sh

dir="${1:?Specify a directory}"
name="$(basename "$PWD")"
tar c "../$name" | gpg -e -o "$dir/$name.tgz.gpg"
