alias vi='/usr/bin/vim'
alias vim='nvim'
alias ls='ls -G'
alias ll='ls -ltrh'
alias irb='irb --simple-prompt'
alias grep='grep --color=auto'
alias ssh='ssh -F ~/.ssh/config'
alias clipd='defaults write org.p0deje.Maccy ignoreEvents true'
alias clipe='defaults write org.p0deje.Maccy ignoreEvents false'
source ~/.git-prompt.sh
export BASH_SILENCE_DEPRECATION_WARNING=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HISTFILESIZE=50000
export HISTSIZE=5000
export EDITOR=nvim
export PATH=$PATH:/usr/local/opt/go/libexec/bin:/usr/local/go/bin
export GOPATH=$HOME/workspace/go
export GOBIN=$HOME/workspace/go/bin/
export GIT_PS1_SHOWDIRTYSTATE=
export GIT_PS1_SHOWUNTRACKEDFILES=
export GIT_SSL_NO_VERIFY=true
export PS1=$'${c_yellow}\h${c_blue}[\w]\n\[$(branch_color)\]$(parse_git_branch)\[\e[92m\]\xe2\x86\x92\[\e[0m\] '
export PS1="(rb:\$(__rbversion))$PS1"
export CLOUDSDK_PROXY_USERNAME=`whoami`
export CLOUDSDK_PROXY_PASSWORD=`cat ~/.pw`
complete -F _fzf_file_completion -o default -o bashdefault xdg-open
# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
source ~/.bashrc
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

export SSHPASS=`cat $HOME/.pw`
alias sshpass="sshpass -e ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

c_red=`tput setaf 001`
c_blue=`tput setaf 0121`
c_green=`tput setaf 002`
c_purple=`tput setaf 6`
c_yellow=`tput setaf 3`
no_color=`tput setaf 7`

__rbversion (){
if  type "ruby" &> /dev/null; then
  rbenv_ruby_version=$(rbenv version | sed -e 's/ .*//')
  printf $rbenv_ruby_version
fi
}

copypath () {
  echo -n $(pwd) | pbcopy
}

parse_git_branch ()
{
  if git rev-parse --git-dir >/dev/null 2>&1
  then
    gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  else
    return 0
  fi
  echo -e "\xee\x82\xa0$gitver"
}
branch_color ()
{
  if git rev-parse --git-dir >/dev/null 2>&1
  then
    color=""
    if git status | grep "nothing to commit" >/dev/null 2>&1
    then
      color="${c_green}"
    else
      color=${c_red}
    fi
  else
    return 0
  fi
  echo -ne $color
}