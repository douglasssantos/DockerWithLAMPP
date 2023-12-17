#!/bin/bash

# Created by: Douglas S. Santos
# E-mail: douglassantos2127@gmail.com
# whatsapp: +55 21 97553-3534

aliascontent="\n\n
# Alias for Project Laravel, NPM, GIT, Docker access Projects, VSCode AND Alias Chown\n
alias clr='php artisan optimize:clear && php artisan optimize'\n
alias cls='php artisan optimize:clear && php artisan optimize'\n
alias cr='php artisan optimize:clear && php artisan optimize'\n
alias l:c='php artisan optimize:clear && php artisan optimize'\n
alias l:clear='php artisan optimize:clear && php artisan optimize'\n
alias l:mfs='php artisan migrate:fresh --seed'\n
alias l:migrate='php artisan migrate'\n
alias l:ms='php artisan migrate --seed'\n
alias l:mseed='php artisan migrate --seed'\n
alias l:r='php artisan route:list'\n
alias l:rc='php artisan route:clear'\n
alias l:route='php artisan route:list'\n
alias l:route-clear='php artisan route:clear'\n
alias laravel='php artisan'\n
alias laravel:clear='php artisan optimize:clear && php artisan optimize'\n
alias laravel:mfs='php artisan migrate:fresh --seed'\n
alias laravel:migrate='php artisan migrate'\n
alias laravel:ms='php artisan migrate --seed'\n
alias laravel:mseed='php artisan migrate --seed'\n
alias laravel:r='php artisan route:list'\n
alias laravel:rc='php artisan route:clear'\n
alias laravel:route='php artisan route:list'\n
alias laravel:route-clear='php artisan route:clear'\n
alias a='php artisan'\n
alias pa='php artisan'\n
alias pa:c='php artisan optimize:clear && php artisan optimize'\n
alias pa:clear='php artisan optimize:clear && php artisan optimize'\n
alias pa:mfs='php artisan migrate:fresh --seed'\n
alias pa:migrate='php artisan migrate'\n
alias pa:ms='php artisan migrate --seed'\n
alias pa:mseed='php artisan migrate --seed'\n
alias pa:r='php artisan route:list'\n
alias pa:rc='php artisan route:clear'\n
alias pa:route='php artisan route:list'\n
alias pa:route-clear='php artisan route:clear'\n
alias gs='git status'\n
alias ga='git add'\n
alias gall='git add *'\n
alias gcm='git commit -m'\n
alias gp='git push'\n
alias gcb='git checkout -b'\n
alias gc='git checkout'\n
alias gb='git branch'\n
alias c='composer'\n
alias ci='composer install'\n
alias cu='composer update'\n
alias cda='composer dump-autoload'\n
alias n='npm'\n
alias ni='npm install'\n
alias nu='npm update'\n
alias ndev='npm run dev'\n
alias nstart='npm run start'\n
alias nwatch='npm run watch'\n
alias nprod='npm run prod'\n
alias nbuild='npm run build'\n
alias nrd='sudo rm -R node_modules/'\n
alias apachown='sudo chown -R www-data:www-data'\n
alias vsc='code .'\n
alias projects='docker exec -it projects bash'\n
alias laravel:repair='mkdir -p storage/framework/{sessions,views,cache} && chmod -R 775 storage/framework'\n
alias l:repair='mkdir -p storage/framework/{sessions,views,cache} && chmod -R 775 storage/framework'\n
alias pa:repair='mkdir -p storage/framework/{sessions,views,cache} && chmod -R 775 storage/framework'\n
alias repair='mkdir -p storage/framework/{sessions,views,cache} && chmod -R 775 storage/framework'\n
alias dimage='docker images'\n
alias dps='docker ps'\n
alias dclear='docker system prune -a'\n
alias dbuild='docker compose up -d --build'\n
alias dup='docker compose up'\n
alias ddown='docker compose down'\n
alias dstop='docker compose stop'\n
alias d-build='docker-compose up -d --build'\n
alias d-up='docker-compose up'\n
alias d-down='docker-compose down'\n
alias d-stop='docker-compose stop'\n
alias drm='docker image rm'\n
alias drmi='docker image rmi'\n
alias checkport='sudo netstat -lpn |grep '\n
alias killport=\"_killport() { sudo kill -9 'sudo lsof -t -i$1';}; _killport\"\n
"

echo -e $aliascontent >> $HOME/.bashrc

source $HOME/.bashrc

echo "Alias Installed with success."
