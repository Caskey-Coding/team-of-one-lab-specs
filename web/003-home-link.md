---
status: ready
verify: grep -q 'href="status.html"' web/index.html
live: curl -fsS --max-time 20 https://caskey-coding.github.io/team-of-one-lab-web/ | grep -q 'href="status.html"'
---

# Home page links to the status page

## Acceptance criteria
- [ ] web/index.html keeps "Lab home." and adds a link to status.html whose text is "Status"
      check: grep -q 'href="status.html"' web/index.html && grep -q "Lab home." web/index.html

## Out of scope
- specs/, and every home other than web/
- web/status.html

## Notes (guidance, not binding)
Plain HTML, no build step.
