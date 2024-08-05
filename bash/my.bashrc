# Git Aliases
alias cs="clear"
alias log="git log"
alias diff="git diff"
alias add="git add ."
alias status="git status"
alias branches="git branch"
alias editc="git commit --amend"
alias master="git checkout master"
alias fdiff="git diff --name-status master"
alias branch="git rev-parse --abbrev-ref HEAD"
alias reset="git reset --hard HEAD~1"

commit(){
    git commit -m "$1"
}

commita(){
    git commit -am "$1"
}

co(){
    git checkout "$1"
}

cb(){
    git checkout -b "$1"
}

dlb(){
    git branch -D "$1"
}

push(){
    git push
}

pull(){
    git pull
}

acp(){
    git add .
    git commit -m "$1"
    git push origin master
}

# Artisan Aliases
alias serve="php artisan serve"
alias migrate="php artisan migrate"
alias rollback="php artisan migrate:rollback"
alias fresh="php artisan migrate:fresh --seed"
alias key="php artisan key:generate"
alias cl_cache="php artisan cache:clear"
alias cl_route="php artisan route:clear"
alias cl_config="php artisan config:clear"
alias ln_serve="php -S localhost:8000 -t ./public"

# Composer Aliases
alias dump="composer dump-autoload"

# Drush Aliases
alias ducr="./vendor/bin/drush cr"
alias dulu="./vendor/bin/drush locale:update"
alias duud="./vendor/bin/drush updb"

# Apache Aliases
alias ap_start="sudo systemctl start apache2"
alias ap_stop="sudo systemctl stop apache2"
alias ap_restart="sudo systemctl restart apache2"
alias ap_check="sudo apache2ctl configtest"

# Add GoLang To $PATH
# PATH=$PATH:/opt/go/bin

# Add Go Plugins To $PATH
# export GOPATH=$HOME/.go

# Add Protoc To $PATH
# PATH=$PATH:/opt/protoc/bin

# Add Java To $PATH
# JAVA_HOME=/usr/bin/javac
# PATH=$PATH:$JAVA_HOME

# Add Ruby To $PATH
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Docker Max HTTP Timeout
# export DOCKER_CLIENT_TIMEOUT=360
# export COMPOSE_HTTP_TIMEOUT=360
