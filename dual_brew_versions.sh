if [ "$(arch)" = "arm64" ]; then
    \teval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi