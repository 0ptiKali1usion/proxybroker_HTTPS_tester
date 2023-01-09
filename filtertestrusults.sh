#!/bin/sh
grep '<!doctype html>' -B 1 results.txt | grep -v '<!doctype' | grep curl | cut -d ' ' -f 6
