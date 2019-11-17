# git add shortcut
function ga
  git add $argv
end

# git commit shortcut
function gc
	git commit $argv
end

# git diff shortcut
function gd
  git diff $arvg
end

# git log alias
function gl
  git log --pretty=format:"%H %s" $argv
end

# git status shortcut
function gs
  git status $argv
end

