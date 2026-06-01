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

Cenário: Validar campos obrigatórios vazios
Quando eu deixar qualquer campo obrigatório vazio
E clicar no botão "Cadastrar"
Então deve ser exibida a mensagem de alerta "Campo obrigatório"


Esquema do Cenário: Cadastro com dados válidos
Quando eu inserir o <nome>, <sobrenome>, <Pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
Então o cadastro deve ser criado com sucesso exibindo a mensagem "Seja bem-vindo(a)"

Exemplos:
| nome     | sobrenome | Pais     | endereco               | cidade    | cep       | telefone        | email                   |
| Carinha  | da Silva  | Brasil   | Rua das Flores, 123    | São Paulo | 12345-678 | (11) 98765-4321 | carinha.silva@gmail.com |
| Link     | Rinku     | Japão    | Rua dos Pinheiros, 456 | Tóquio    | 98765-432 | (81) 91234-5678 | linkezelda@hotmail.com  |
| Theodoro | Fonseca   | Portugal | Rua do Sol, 789        | Lisboa    | 54321-987 | (21) 99876-5432 | f.theo@gmail.com        |


Esquema do Cenário: Validar campos obrigatórios preenchidos
Quando eu preencher o campo <nome>, <sobrenome>, <email>
E clicar no botão "Cadastrar"
Então o sistema deve exibir uma <mensagem> 
Exemplos:
| nome  | sobrenome | email          |
| Thais | Oliveira  | thais@ebac.com | Cadastro realizado com sucesso
|       |  Santos   | joao@ebac.com  | Verificar campo obrigatório em branco
| Maria |           | maria@ebac.com | Verificar campo obrigatório em branco
| Thais | Oliveira  | thaisemail.com | Verificar formato de eamil

