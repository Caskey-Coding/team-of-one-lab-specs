# Rule: never commit a .env file, not even in a commit a later one fixes.
if git ls-files | grep -qE '(^|/)\.env$' ||
   git log --branches --not --remotes --diff-filter=A --name-only --format= |
   grep -qE '(^|/)\.env$'; then
  echo ".env is in a commit about to be pushed; undo that commit, then re-commit" >&2
  echo "the other files by path: git reset HEAD~" >&2
  exit 1
fi
