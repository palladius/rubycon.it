#!/bin/bash
# Simple script to extract data for the meeting prep CUJ

echo "Generating Meeting Prep Data..."
echo "====================================="
echo "Private AIs (RubyconIT/pvt-data):"
gh issue list -R RubyconIT/pvt-data --state open -L 10 --json number,title,assignees,updatedAt | jq -r '.[] | " - #\(.number): \(.title) (Assignees: \(.assignees | map(.login) | join(", "))) [Updated: \(.updatedAt)]"'

echo ""
echo "Recently Closed (RubyconIT/pvt-data):"
gh issue list -R RubyconIT/pvt-data --state closed -L 5 --json number,title,assignees,updatedAt | jq -r '.[] | " - #\(.number): \(.title) (Assignees: \(.assignees | map(.login) | join(", "))) [Updated: \(.updatedAt)]"'

echo ""
echo "Public Bugs (palladius/rubycon.it):"
gh issue list -R palladius/rubycon.it --state open --label bug -L 10 --json number,title,assignees,updatedAt | jq -r '.[] | " - #\(.number): \(.title) (Assignees: \(.assignees | map(.login) | join(", "))) [Updated: \(.updatedAt)]"'
