clear_pycache() {
  find . -name "__pycache__" -type d -exec rm -rf {} \;
  find . -name ".pytest_cache" -type d -exec rm -rf {} \;
}

clear_nextjs(){
  find . -name ".next" -type d -exec rm -rf {} \;
}

yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
