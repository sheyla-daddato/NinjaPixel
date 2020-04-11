#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar os jogos do meu catálogo NinjaPixel
    Sendo um Administrador de catálogo
    Posso acessar o sistema com meu e-mail e senha

Cenario: Acessar o portal

    Dado que acesso à página principal
    Quando eu submeto minhas credenciais "papito@ninjapixel.com" e "pwd123"
    Então devo ser autenticado

Cenario: Senha inválida

    Dado que acesso à página principal
    Quando eu submeto minhas credenciais "papito@ninjapixel.com" e "123456"
    Então devo ver uma mensagem de alerta "Usuário e/ou senha inválidos"

Cenario: Email não cadastrado no sistema

    Dado que acesso à página principal
    Quando eu submeto minhas credenciais "teste@teste.com" e "pwd123"
    Então devo ver uma mensagem de alerta "Usuário e/ou senha inválidos"

Cenario: Não informo o email

    Dado que acesso à página principal
    Quando eu submeto minhas credenciais "" e "pwd123"
    Então devo ver uma mensagem de alerta "Opps. Informe o seu email!"

Cenario: Não informo a senha

    Dado que acesso à página principal
    Quando eu submeto minhas credenciais "papito@ninjapixel.com" e ""
    Então devo ver uma mensagem de alerta "Opps. Informe a sua senha!"