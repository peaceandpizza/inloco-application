#!/bin/sh
#login do database
export DATABASE_LOGIN=""

#senha do database
export DATABASE_PASSWORD=""

#host padrão, caso rode localmente, seria o localhost
export DEFAULT_HOST="localhost"

#porta padrão do Ruby, caso queira mudar, pode fazer aqui
export DEFAULT_PORT=3000

#a porta do MailCatcher, ou então o seu programa que irá interceptar os pedidos smtp
export MAILER_PORT=1025

#inicia o mailcatcher para rodar localmente o projeto
mailcatcher &

#inicia o projeto em ambiente de desenvolvimento
rspec spec $@
