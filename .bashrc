alias gs='git status'
alias gb='git branch'
alias go='git checkout'

# docker list
docker() {
    if [[ $@ == "list" ]]; then
        shift
        /usr/bin/docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}" "$@" | sed -e "s/  /\t/g;s/\bUp\b[^\t]*/\x1B[32m&\x1B[0m/;s/\S*\s*\(Created\|Restarting\|Paused\)\b[^\t]*/\x1B[33m&\x1B[0m/;s/\S*\s*\(Exited\|Dead\)\b[^\t]*/\x1B[31m&\x1B[0m/;s/\t/  /g"
    else
        command docker "$@"
    fi
}

export PATH="/home/stanislav/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PYENV_VERSION=3.6.9
