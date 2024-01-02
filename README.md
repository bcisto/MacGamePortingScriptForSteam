To run this script, you need to download the run.sh file and then call "bash run.sh" in terminal.

For dual-brew versions, paste this selection in .zshrc file by calling nano ~/.zshrc:
if [ "$(arch)" = "arm64" ]; then
    \teval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi
