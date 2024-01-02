#! /bin/bash

echo "Must have fully updated Developer Beta OS, have the Game Porting ToolKit dmg mounted (open the .dmg file and accept terms to mount), and Steam Windows installer in Downloads folder"
echo "If you have homebrew already installed, please check .readme file."
echo "If you are set to go, press enter, else press any other key to abort."
IFS=
read -r -n 1 ENTER_CHECK
echo "$ENTER_CHECK"
if [ "$ENTER_CHECK"  != "" ]; 
        then exit
fi
softwareupdate --install-rosetta
arch -x86_64 zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/usr/local/bin/brew shellenv)"
export PATH=/usr/local/bin:${PATH}
brew tap apple/apple http://github.com/apple/homebrew-apple
brew -v install apple/apple/game-porting-toolkit
ditto /Volumes/Game\ Porting\ Toolkit-1.0/redist/lib/ `brew --prefix game-porting-toolkit`/lib/
cp /Volumes/Game\ Porting\ Toolkit*/gameportingtoolkit* /usr/local/bin
WINEPREFIX=~/porting-system $(brew --prefix game-porting-toolkit)/bin/wine64 winecfg
gameportingtoolkit ~/my-game-prefix ~/Downloads/SteamSetup.exe
clear
clear
echo "Operations completed successfully."
echo "USE THIS COMMAND TO RUN STEAM: MTL_HUD_ENABLED=1 WINEESYNC=1 WINEPREFIX=~/porting system \$(brew --prefix game-porting-toolkit)/bin/wine64 \"C:\Program Files (x86)\Steam\steam.exe\";"