---
status: ready
verify: grep -q '<h1>Lab</h1>' web/index.html
live: curl -fsS --max-time 20 https://caskey-coding.github.io/team-of-one-lab-web/ | grep -q '<h1>Lab</h1>'
---

# Home page heading

## Acceptance criteria
- [ ] web/index.html keeps its link to status.html and gains the heading `<h1>Lab</h1>` above "Lab home."
      check: grep -q '<h1>Lab</h1>' web/index.html && grep -q 'href="status.html"' web/index.html

## Out of scope
- specs/, and every home other than web/
- web/status.html

## Notes (guidance, not binding)
Plain HTML, no build step.
