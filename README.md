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

step-by-step aqui

### Rotas

- '/' - *redireciona para home*
- '/home' - *caso exista uma sessão válida, mostra a mensagem especificada, caso contrário vai pra tela de login e mostra uma mensagem de erro*
- '/login' - *mostra o formulário de login*
- '/register' - *mostra o formulário de registro*
- '/password/new' - *formulário de senha esquecida*
- '/confirmation/new' - *formulário de reenvio de emaail de confirmação*