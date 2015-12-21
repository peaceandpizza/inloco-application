#!/bin/sh
#url do database
export DATABASE_LOGIN=""
export DATABASE_PASSWORD=""
export DEFAULT_HOST="localhost"
export DEFAULT_PORT=3000
export MAILER_PORT=1025

#inicia o mailcatcher para rodar localmente o projeto
mailcatcher &

#inicia o projeto em ambiente de desenvolvimento
rails s $@