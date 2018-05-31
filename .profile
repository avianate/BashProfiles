clear
PROMPT_COMMAND='__posh_git_ps1 "\w (\!)" " \$: ";'$PROMPT_COMMAND



# Bash commands

#alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias ls="/bin/ls -aF"



# Terminal


alias editProfile="open ~/.profile"
alias editBashProfile="open ~/.bash_profile"
alias editBashrc="open ~/.bashrc"
alias editPath="open ~/.profile"
alias restart="source ~/.bash_profile;"



# File system shortcuts

alias desktop="cd ~/Desktop"
alias develop="cd ~/Documents/Develop"
alias ios="develop; cd iOS"
alias wx="ios; cd 'AeroWx Pro'"
alias projects="cd ~/Projects"
alias psconnect="cd ~/Projects/ps-connect"
alias home="cd ~"
alias js="develop; cd JS"



# Misc

alias server="python -m SimpleHTTPServer 8000"
alias updateNode="brew update && brew upgrade node && npm install -g npm"
alias vsCodeSettings="$HOME/Library/Application Support/Code/User"
alias hosts="open -a 'TextEdit' /etc/hosts"
export PATH="$PATH:"/Applications/microchip/xc8/v1.45/bin:~/nuget.exe:/Library/Frameworks/Mono.framework/Versions/Current/bin/""


# Scripts

function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

function newComponent () {
name=$1
lower=$(echo "$name" | tr [:upper:] [:lower:])
mkdir "$name";
cd "$name";
cat > "$name".js <<EOF
import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import styles from './styles.css';
import classes from 'join-classnames';
EOF
cat > package.json <<EOF
{
	"main": "${name}.js",
	"name": "${lower}"
}
EOF
touch styles.css;
cd ..
}
export PATH="$PATH:"/Applications/microchip/xc8/v1.42/bin""
