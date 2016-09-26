clear
PROMPT_COMMAND='__posh_git_ps1 "\w (\!)" " \$: ";'$PROMPT_COMMAND

alias desktop="cd ~/Desktop"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias rpi="ssh 192.168.0.18 -l pi"
alias ls="/bin/ls -aF"
alias server="python -m SimpleHTTPServer 8000"
alias editProfile="open ~/.profile"
alias editPath="open ~/.profile"
alias develop="cd ~/Documents/Develop"
alias lms="develop; cd LMS; code ."
function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }
