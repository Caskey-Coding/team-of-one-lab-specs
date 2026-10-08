---
status: in-progress
verify: grep -q "Last run" web/status.html
live: curl -fsS https://caskey-coding.github.io/team-of-one-lab-web/status.html | grep -q "Last run"
---

# Status page

## Acceptance criteria
- [ ] web/status.html exists and shows the text "Last run"
      check: grep -q "Last run" web/status.html
- [ ] the live page shows it
      check: curl -fsS https://caskey-coding.github.io/team-of-one-lab-web/status.html | grep -q "Last run"

## Out of scope
- specs/, and every home other than web/
- web/index.html

## Notes (guidance, not binding)
Plain HTML, no build step; the site serves web/ as published.
