# Rule: every in-progress spec must pass its own verify command (Lesson 1).
[ -d specs ] || cd ..   # after Lesson 4's split, specs/ sits beside this repository
[ -d specs ] || { echo "no specs/ directory found" >&2; exit 1; }
for spec in $(grep -rl '^status: in-progress' specs --include='*.md'); do
  cmd=$(sed -n 's/^verify: *//p' "$spec" | sed 's/ *#.*//' | head -1)
  [ -n "$cmd" ] || { echo "$spec has no verify command" >&2; exit 1; }
  sh -c "$cmd" || { echo "$spec failed its verify command: $cmd" >&2; exit 1; }
done
