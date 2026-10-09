#language: pt

Funcionalidade: Cadastro do usuário
Como cliente Ebac-shop
Quero realizar meu Cadastro
Para finalizar minhas compras



Esquema do Cenário: Concluir cadastro com dados validos
Quando preencher todos os campos obrigatórios (*) com dados válidos, informar o email <email> e clicar em "Concluir cadastro"
Então o cadastro deve ser concluido e aparecer a mensagem <mensagem>



Esquema do Cenario: Concluir cadastro com dados validos
                  Dado que  os campos obrigatorios (*) estao preenchidos com dados validos
                  E o e-mail informado  <email>
                  Quando solicito a conclusao do cadastro
                  Entao o cadastro deve ser concluido e aparecer <mensagem>


Esquema do Cenario: Validar restriçao de email com formato invalido
Quando eu preencher os dados obrigatorios e informar o campo email com o valor <email_invalido>
E clicar no botao "Finalizar compra"
Então o sistema nao deve permitir o cadastro e exibir uma mensagem de erro indicando o motivo



Cenário: Validação de campos obrigatórios
Dado que estou na página de cadastro
Quando prencher todos os campos marcados com asterisco e clicar em "Cadastrar"
Então o sistema deve exibir a mensagem "Cadastro realizado com sucesso"

Cenário: Campos obrigatórios sem preecher
Dado que estou na página de cadastro
Quando deixo de preencher algum campo obrigatório marcado com asterisco
Então o sistema deve exibir a mensagem "Peencha todos os campos obrigatórios"

Cenário: Validar campos obrigatórios vazios
Quando eu deixar de preencher qualquer campo obrigatório e clicar no botão "Cadastrar"
Então deve ser exibida a mensagem de alerta "Campo obrigatório vazio"





Given I am on the checkout page

Scenario Outline: User can log in with different valid credentials
Given I am on the checkout page
When I have entered a valid first name <first_name>, email address <email_address>, and password <password>
And click on the "Login" button
Then I should be redirected to the checkout page



Esquema do Cenário: Realizar cadastro dom dados validos
Dado que estou na página de cadastro da EBAC-SHOP
Quando preencher os campos com nome <nome>, sobrenome <sobrenome>, telefone <telefone> e e-mail <email>
E clicar no botão "Cadastrar"
Então o cadastro deve ser realizado com sucesso e devo conseguir finalizar a compra
Exemplos:
| nome    | sobrenome | telefone      | email             |
| "João"  | "Silva"   | "81999999999" | "joao@email.com"  |
| "Maria" | "Santos"  | "81988888888" | "maria@email.com" |





Cenário: Cadastro com dados obrigatórios preenchidos
Dado que estou na página de cadastro
Quando preencher todos os campos obrigatórios e clicar em finalizar cadastro
Então o cadastro deve ser realizado com sucesso


Esquema do Cenário: Cadastro de usuário
Quando eu deixar de preencher algum dos campos obrigatórios com <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
E clicar em "Finalizar compra"
Então deve exibir a <mensagem> 

Exemplos:
| nome    | sobrenome | pais   | endereco            | cidade     | cep      | telefone    | email             | mensagem                  |
|         | Silveiras | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 | mariana@teste.com | "Campo obrigatório vazio" |
| Mariana |           | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 | mariana@teste.com | "Campo obrigatório vazio" |
| Mariana | Silveiras |        | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 | mariana@teste.com | "Campo obrigatório vazio" |
| Mariana | Silveiras | Brasil |                     | Vila Velha | 29108031 | 27999999999 | mariana@teste.com | "Campo obrigatório vazio" |
| Mariana | Silveiras | Brasil | Rua das Laranjeiras |            | 29108031 | 27999999999 | mariana@teste.com | "Campo obrigatório vazio" |
| Mariana | Silveiras | Brasil | Rua das Laranjeiras | Vila Velha |          | 27999999999 | mariana@teste.com | "Campo obrigatório vazio" |
| Mariana | Silveiras | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 |             | mariana@teste.com | "Campo obrigatório vazio" |
| Mariana | Silveiras | Brasil | Rua das Laranjeiras | Vila Velha | 29108031 | 27999999999 |                   | "Campo obrigatório vazio" |
|         |           |        |                     |            |          |             |                   | "Campo obrigatório vazio" |


