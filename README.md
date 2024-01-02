To run this script, you need to download the run.sh file and then calling "bash run.sh" in terminal.

For dual-brew versions, paste this selection in .zshrc file by calling nano ~/.zshrc:
if [ "$(arch)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi
