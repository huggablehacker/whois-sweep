#!/bin/bash
#whois sweep of ip list.

while read -r url; do
  printf 'URL: "%s"\n' "$url"

  outfile="$( tr -s -c 'A-Za-z0-9' '_' <<<"$url" )"
  printf 'File: "%s"\n' "$outfile"

  whois "$url" >> "$outfile"
done <ip.txt
