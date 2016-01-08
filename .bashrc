export PATH=/opt/aaa/bin:$PATH

[ -n "$PS1" ] && source ~/.bash_profile;
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
