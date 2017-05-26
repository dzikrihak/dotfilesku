# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
if [[ -r /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
fi
# aliases
alias -g vim='nvim'
alias vi='nvim'
alias e='emacsclient -t'
alias ec='emacsclient -c -n'
alias  ping8='ping 8.8.8.8'
alias  pingg='ping google.com'
alias et='emacsclient -t -a'
alias yd='youtube-dl'
alias pg_cek='pg_ctl -D /var/lib/postgres/data -l logfile start'






export DISABLE_AUTO_TITLE='true'
export ZSH=$HOME/.oh-my-zsh
export EDITOR='nvim'
ZSH_THEME="bullet-train"
DISABLE_AUTO_UPDATE="true"
TERM="xterm-256color"
#ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

source /home/dzikri/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(git docker docker-compose git golang pip ssh-agent vagrant )
source $ZSH/oh-my-zsh.sh
#source /usr/bin/tmuxinator
# User configuration export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# pyenv environment
export PYENV_ROOT="$HOME/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH="${PYENV_ROOT}/bin:${PATH}"
    eval "$(pyenv init -)"
fi
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#pyenv virtualenvwrapper
export PYENV_VIRTUALENV_DISABLE_PROMPT=1


#go environment
export GOROOT=/opt/go
export PATH=$PATH:$GOROOT/bin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(pyenv virtualenv-init -)"


# Ruby env
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# Cask for emacs
export PATH="/home/dzikri/.cask/bin:$PATH"

