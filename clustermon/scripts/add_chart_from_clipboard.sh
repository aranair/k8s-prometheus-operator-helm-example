# !/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$#" -ne 1 ]; then
  echo "Usage: ./add_chart_from_clipboard.sh name-of-dashboard"
  exit
fi

# Prepare json for Grafana Watcher
pbpaste | \
  jq '.id = null | del(.__requires) | del(.uid)' | \
  tee "$DIR/../dashboards/$1-dashboard.json"
