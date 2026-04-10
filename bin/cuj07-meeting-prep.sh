#!/bin/bash
# Simple script to extract data for the meeting prep CUJ

SEVEN_DAYS_AGO=$(date -d '7 days ago' +%Y-%m-%d)

# Map GitHub usernames to real names
JQ_ALIASES='{"palladius": "Riccardo", "coorasse": "Alessandro", "magnatorta": "Alessia", "emilianodellacasa": "Emiliano", "Gimbardo": "Elia"} as $aliases'
JQ_FMT_RECENT='.[] | " - [\(.state)] #\(.number): \(.title) (Updated: \(.updatedAt[:10]))"'
# Format issues grouping them logically (we will use multiple passes or group_by)
JQ_FMT_BY_OWNER="$JQ_ALIASES | .[] | {number, title, updatedAt, owner: (.assignees | map(\$aliases[.login] // .login) | join(\", \"))} | if .owner == \"\" then .owner = \"Unassigned\" else . end"

echo "Generating Meeting Prep Data..."
echo "====================================="
echo "📅 Context: What changed in the last 7 days (since $SEVEN_DAYS_AGO)?"
echo "-------------------------------------"
echo "Public Repo Commits (palladius/rubycon.it):"
git log --since="7 days ago" --oneline | head -n 5 | sed 's/^/ - /'
echo ""

echo "Issues Updated/Closed in the last 7 days (Combined):"
(
  gh issue list -R RubyconIT/pvt-data --search "updated:>$SEVEN_DAYS_AGO" --limit 5 --json number,state,title,updatedAt
  gh issue list -R palladius/rubycon.it --search "updated:>$SEVEN_DAYS_AGO" --limit 5 --json number,state,title,updatedAt
) | jq -s 'add' | jq -r "$JQ_ALIASES | .[] | \" - [\(.state)] #\(.number): \(.title) (Updated: \(.updatedAt[:10]))\""
echo ""

echo "====================================="
echo "🎤 Owner Updates (Grouped by Assignee):"
echo "-------------------------------------"

# Combine open issues from both repos
COMBINED_ISSUES=$( (
  gh issue list -R RubyconIT/pvt-data --state open -L 20 --json number,title,assignees,updatedAt
  gh issue list -R palladius/rubycon.it --state open --label bug -L 10 --json number,title,assignees,updatedAt
) | jq -s 'add' )

echo "$COMBINED_ISSUES" | jq -r "$JQ_ALIASES | .[] | {number, title, owner: (.assignees | map(\$aliases[.login] // .login) | join(\", \"))} | if .owner == \"\" then .owner = \"⚠️ Unassigned\" else . end | .owner" | sort | uniq | while read -r owner; do
    echo "### 👤 $owner"
    echo "$COMBINED_ISSUES" | jq -r "$JQ_ALIASES | .[] | {number, title, owner: (.assignees | map(\$aliases[.login] // .login) | join(\", \"))} | if .owner == \"\" then .owner = \"⚠️ Unassigned\" else . end | select(.owner == \"$owner\") | \" - #\(.number): \(.title)\""
    echo ""
done
