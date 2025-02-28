function git_current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}


alias gss="git status"
alias gb="git branch"
alias gcp="git cherry-pick"
alias gaa="git add --all"
alias gc="git commit"
alias gp="git push"
alias gco="git checkout"
alias gcb="git checkout -b"

