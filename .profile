clear
PROMPT_COMMAND='__posh_git_ps1 "\w (\!)" " \$: ";'$PROMPT_COMMAND

alias desktop="cd ~/Desktop"
#alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias ls="/bin/ls -aF"
alias server="python -m SimpleHTTPServer 8000"
alias editProfile="open ~/.profile"
alias editBashProfile="open ~/.bash_profile"
alias editBashrc="open ~/.bashrc"
alias editPath="open ~/.profile"
alias develop="cd ~/Documents/Develop"
alias projects="cd ~/Documents/Develop/Projects"
alias ip="cd ~/Documents/Develop/Projects/integration-point-fe"
alias ip-components="ip; cd src/app/components"
alias ip-views="ip; cd src/app/views"
alias updateNode="brew update && brew upgrade node && npm install -g npm"
alias connectToParseServer="ssh -i 'instagramkeypair.pem' ubuntu@ec2-52-53-246-155.us-west-1.compute.amazonaws.com"
alias restart="exec bash"

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
