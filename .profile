clear
PROMPT_COMMAND='__posh_git_ps1 "\w (\!)" " \$: ";'$PROMPT_COMMAND

alias desktop="cd ~/Desktop"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias ls="/bin/ls -aF"
alias server="python -m SimpleHTTPServer 8000"
alias editProfile="open ~/.profile"
alias editPath="open ~/.profile"
alias develop="cd ~/Documents/Develop"
alias lms="develop; cd LMS; code ."
function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

function newComponent () {
name=$1; 
mkdir "$name";
cd "$name";
cat > "$name".js <<'EOF'
import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import styles from './styles.css';
import classes from 'join-classnames';
EOF
cat > package.json <<'EOF'
{
	"main": "${name}.js",
	"name": "${name}"
}
EOF
touch styles.css;
}
