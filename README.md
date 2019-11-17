# My local configuration files

# 1. FISH shell configuration
I have only added some git aliases of commands that I often use daily.
It is located at: ./.config/fish/functions/git_aliases.fish

I've added some hack to WSL users to enable fish shell at autostart. It is related to .bashrc in this project.
So for me the solution is to overwrite this file on every new WSL installation.
```bash
cp ./.bashrc ~
```

So you probably only need to copy these lines from my .bashrc to your:
```bash
if [ -t 1 ]; then
	exec fish
fi
```

# 2. VIM editor configuration
So it is my initial configuration, that I've created by some manuals. Full description and improvements will be there
later

