#language: pt

Funcionalidade: Cadastro do usuário
Como cliente Ebac-shop
Quero realizar meu Cadastro
Para finalizar minhas compras


Cenário: Validação de campos obrigatórios
Dado que estou na página de cadastro
Quando prencher todos os campos marcados com asterisco e clicar em "Cadastrar"
Então o sistema deve exibir a mensagem "Cadastro realizado com sucesso"

Cenário: Campos obrigatórios sem preecher
Dado que estou na página de cadastro
Quando deixo de preencher algum campo obrigatório marcado com asterisco
Então o sistema deve exibir a mensagem "Peencha todos os campos obrigatórios"

Cenário: Validar campos obrigatórios vazios
Dado que estou na página de cadastro
Quando eu deixar qualquer campo obrigatório vazio
E clicar no botão "Cadastrar"
Então deve ser exibida a mensagem de alerta "Campo obrigatório"


Given I am on the checkout page

Scenario Outline: User can log in with different valid credentials
Given I am on the checkout page
When I have entered a valid first name <first_name>, email address <email_address>, and password <password>
And click on the "Login" button
Then I should be redirected to the checkout page



Cenário: Cadastro com dados obrigatórios preenchidos
Dado que estou na página de cadastro
Quando preencher todos os campos obrigatórios e clicar em finalizar cadastro
Então o cadastro deve ser realizado com sucesso


Esquema do Cenário: Cadastro de usuário
Quando eu preencher os campos com <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
E clicar em "Finalizar compra"
Então deve exibir a mensagem <mensagem>

Exemplos:
| nome    | sobrenome | pais   | endereco            | cidade     | cep      | telefone    | email             | mensagem                        |
|         | Venturini | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 | patrick@teste.com | "Campo obrigatório"             |
| Patrick |           | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 | patrick@teste.com | "Campo obrigatório"             |
| Patrick | Venturini |        | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 | patrick@teste.com | "Campo obrigatório"             |
| Patrick | Venturini | Brasil |                     | Vila Velha | 29108031 | 27999999999 | patrick@teste.com | "Campo obrigatório"             |
| Patrick | Venturini | Brasil | Rua das Laranjeiras |            | 29108031 | 27999999999 | patrick@teste.com | "Campo obrigatório"             |
| Patrick | Venturini | Brasil | Rua das Laranjeiras | Vila Velha |          | 27999999999 | patrick@teste.com | "Campo obrigatório"             |
| Patrick | Venturini | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 |             | patrick@teste.com | "Campo obrigatório"             |
| Patrick | Venturini | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 |                   | "Campo obrigatório"             |
|         |           |        |                     |            |          |             |                   | "Campo obrigatório"             |
| Patrick | Venturini | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 | patrickteste.com  | "E-mail inválido"               |
| Patrick | Venturini | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 | patrick@teste.com | "Cadastro realizado com sucesso"|
