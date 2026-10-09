---
status: ready
verify: grep -q "Checked by the gate" web/status.html
live: curl -fsS --max-time 20 https://caskey-coding.github.io/team-of-one-lab-web/status.html | grep -q "Checked by the gate"
---

# Status page footer

## Acceptance criteria
- [ ] web/status.html keeps "Last run" and adds a footer reading "Checked by the gate"
      check: grep -q "Checked by the gate" web/status.html && grep -q "Last run" web/status.html

## Out of scope
- specs/, and every home other than web/
- web/index.html

## Notes (guidance, not binding)
Plain HTML, no build step.
