#!/usr/bin/env bash

find "${1-.}" -type f -printf '%T@ %p\n' | sort -n | tail -1 | cut -d" " -f2
