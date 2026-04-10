#!/bin/bash
# Simple script to extract data for the meeting prep CUJ

SEVEN_DAYS_AGO=$(date -d '7 days ago' +%Y-%m-%d)

echo "Generating Meeting Prep Data..."
echo "====================================="
echo "📅 Context: What changed in the last 7 days (since $SEVEN_DAYS_AGO)?"
echo "-------------------------------------"
echo "Public Repo Commits (palladius/rubycon.it):"
git log --since="7 days ago" --oneline | head -n 5 | sed 's/^/ - /'
echo " - ... (showing top 5 recent commits)"
echo ""

echo "Issues Updated/Closed in the last 7 days (Private Repo):"
gh issue list -R RubyconIT/pvt-data --search "updated:>$SEVEN_DAYS_AGO" --limit 10 --json number,state,title,updatedAt | jq -r '.[] | " - [\(.state)] #\(.number): \(.title) (Updated: \(.updatedAt[:10]))"'
echo ""

echo "Issues Updated/Closed in the last 7 days (Public Repo):"
gh issue list -R palladius/rubycon.it --search "updated:>$SEVEN_DAYS_AGO" --limit 10 --json number,state,title,updatedAt | jq -r '.[] | " - [\(.state)] #\(.number): \(.title) (Updated: \(.updatedAt[:10]))"'
echo ""

echo "====================================="
echo "🎯 Top Priorities: Open Private AIs (RubyconIT/pvt-data):"
gh issue list -R RubyconIT/pvt-data --state open -L 10 --json number,title,assignees,updatedAt | jq -r '.[] | " - #\(.number): \(.title) (Assignees: \(.assignees | map(.login) | join(", "))) [Updated: \(.updatedAt[:10])]"'

echo ""
echo "🛠️ Public Bugs (palladius/rubycon.it):"
gh issue list -R palladius/rubycon.it --state open --label bug -L 10 --json number,title,assignees,updatedAt | jq -r '.[] | " - #\(.number): \(.title) (Assignees: \(.assignees | map(.login) | join(", "))) [Updated: \(.updatedAt[:10])]"'
