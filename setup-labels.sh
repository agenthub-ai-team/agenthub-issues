#!/bin/bash
set -e

# Delete default labels that aren't needed
gh label delete "enhancement" --yes 2>/dev/null || true
gh label delete "good first issue" --yes 2>/dev/null || true
gh label delete "help wanted" --yes 2>/dev/null || true
gh label delete "invalid" --yes 2>/dev/null || true

# Update existing default labels to match our descriptions
gh label edit "bug" --description "Something is broken" --color "d73a4a"
gh label edit "documentation" --description "Documentation improvement" --color "0075ca"
gh label edit "duplicate" --description "Duplicate of another issue" --color "cfd3d7"
gh label edit "question" --description "Usage question or support" --color "d876e3"
gh label edit "wontfix" --description "Will not be addressed" --color "ffffff"

# Product labels
gh label create "product: pro" --description "Related to AgentHub Pro" --color "1d76db"
gh label create "product: analyst" --description "Related to AgentHub Analyst" --color "0e8a16"

# Type labels (bug, question, documentation already exist)
gh label create "feature" --description "New feature request" --color "a2eeef"

# Priority labels
gh label create "priority: critical" --description "Blocking issue, needs immediate attention" --color "b60205"
gh label create "priority: high" --description "Important, should be addressed soon" --color "d93f0b"
gh label create "priority: medium" --description "Normal priority" --color "fbca04"
gh label create "priority: low" --description "Nice to have, non-urgent" --color "c5def5"

# Status labels (duplicate and wontfix already exist)
gh label create "triage" --description "Needs initial review" --color "f9d0c4"
gh label create "confirmed" --description "Reproduced / accepted" --color "0e8a16"

echo "Done! Labels set up."
