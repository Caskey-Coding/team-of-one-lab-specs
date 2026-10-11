---
status: ready
verify: grep -q '<h1>Status</h1>' web/status.html
live: curl -fsS --max-time 20 https://caskey-coding.github.io/team-of-one-lab-web/status.html | grep -q '<h1>Status</h1>'
---

# Status page heading

## Acceptance criteria
- [ ] web/status.html keeps "Last run" and the footer, and gains the heading `<h1>Status</h1>` at the top of the body
      check: grep -q '<h1>Status</h1>' web/status.html && grep -q "Last run" web/status.html && grep -q "Checked by the gate" web/status.html

## Out of scope
- specs/, and every home other than web/
- web/index.html

## Notes (guidance, not binding)
Plain HTML, no build step.
