alias ls='ls --color=auto'
alias cp='cp -i'
alias ll='ls -AlFh --color=auto'
alias la='ls -a --color=auto'

#端末起動時にls
ls

#bashオプション
shopt -s autocd #cdを打たなくてもcdできる
shopt -s cdspell #spellmissしてもcdできる

#cdしたらls
cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"


#gitのブランチがあれば表示する
#初期PS1: ${debian_chroot:+($debian_chroot)}\u@\h:\w\$:
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
  PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$(parse_git_branch)\$ "
