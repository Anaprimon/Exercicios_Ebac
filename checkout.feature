#language: pt

Funcionalidade: Cadastro do usuário
Como cliente Ebac-shop
Quero realizar meu Cadastro
Para finalizar minhas compras

Contexto: 
Dado que estou na página de cadastro

Cenário: Validação de campos obrigatórios
Quando prencher todos os campos marcados com asterisco e clicar em "Cadastrar"
Então o sistema deve exibir a mensagem "Cadastro realizado com sucesso"

Cenário: Campos obrigatórios sem preecher
Quando deixo de preencher algum campo obrigatório marcado com asterisco
Então o sistema deve exibir a mensagem "Peencha todos os campos obrigatórios"




