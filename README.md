To run this script, you need to download the run.sh file and then call "bash run.sh" in terminal.

For dual-brew versions, paste this selection in .zshrc file by calling nano ~/.zshrc:
\nif [ "$(arch)" = "arm64" ]; then\n
    \teval "$(/opt/homebrew/bin/brew shellenv)"\n
else\n
    \teval "$(/usr/local/bin/brew shellenv)"\n
fi
