#!/usr/bin/env bash

echo "Create a zip file with all *.html files..."
find "${1-.}" -path '**/*.html' | xargs tar cf htmls.tar

echo "Done."
echo ""
echo "Listing htmls.tar content:"
cat <(tar tvf htmls.tar)
