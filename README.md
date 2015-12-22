[Aplicativo no Heroku](https://pedro-inloco-login.herokuapp.com/)

### Módulos usados
- Ruby: **2.2.3**
- Rails: **4.2.5**
- Database: **PostgreSQL**
- Mailer:
  - Development: MailCatcher gem
  - Production: SendGrid

### Migrate
```
# para desenvolvimento
$ rake db:migrate RAILS_ENV=development 

# para testes
$ rake db:migrate RAILS_ENV=testing 
```

### Rodando o Projeto

Para a execução de testes, utilizar o arquivo *exec-tests.sh* ou *exec.sh*, mas antes disto configurar os parâmetros:
```
#login do database
export DATABASE_LOGIN=""

#senha do database
export DATABASE_PASSWORD=""

#host padrão, caso rode localmente, seria o localhost
export DEFAULT_HOST=""

#porta padrão do Ruby, caso queira mudar, pode fazer aqui
export DEFAULT_PORT=3000

#a porta do MailCatcher, ou então o seu programa que irá interceptar os pedidos smtp
#o MailCatcher usa a porta 1025 por padrão
export MAILER_PORT=1025
```

exec-tests irá rodar a sequência de testes especificados na pasta de specs.
exec irá executar o projeto para que você o execute localmente.


step-by-step aqui

### Rotas

- '/' - *redireciona para home*
- '/home' - *caso exista uma sessão válida, mostra a mensagem especificada, caso contrário vai pra tela de login e mostra uma mensagem de erro*
- '/login' - *mostra o formulário de login*
- '/register' - *mostra o formulário de registro*
- '/password/new' - *formulário de senha esquecida*
- '/confirmation/new' - *formulário de reenvio de emaail de confirmação*