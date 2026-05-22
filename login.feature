#language: pt

Funcionalidade: Autenticação do usuário

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto: Dado que estou na tela de Login
            
Cenário: Deve direcionar para a tela de checkout ao inserir dados válidos
Quando eu informo um e-mail válido "cliente@ebac.com"
E preencho corretamente a senha cadastrada
Então o sistema deve me direcionar para a tela de checkout


Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
Quando todos os campos obrigatórios foram preenchidos corretamente e informo o e-mail <email> errado
E clico no botão "Cadastrar"
Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"

Exemplos:
| email           |
| clienteebac.com |
| cliente@ebac    |
| @ebac.com       |
| cliente@.com    |


Esquema do Cenário: Validação de campos obrigatórios
Quando prencher Nome <nome>, Sobrenome <sobrenome>, Endereço <endereco>,Cidade <cidade>, CEP <cep> e Telefone <telefone>
E clico em "Cadastrar"
Então o sistema deve exibir a mensagem "<mensagem>"

Exemplos:
| nome  | sobrenome | endereco   | Cidade    | cep       | telefone     |mensagem                          |
|       | Silva     |  Rua A     | São Paulo | 09999-000 |(11)5555-6666 |"O campo Nome é obrigatório"      |
| Maria |           |  Rua A     | São Paulo | 09999-000 |(11)5555-6666 |"O campo Sobrenome é obrigatório" |
| Maria | Silva     |            | São Paulo | 09999-000 |(11)5555-6666 |"O campo Endedeço é obrigatório"  |
| Maria | Silva     |  Rua A     |           | 09999-000 |(11)5555-6666 |"O campo Cidade é obrigatório"    |
| Maria | Silva     |  Rua A     | São Paulo |           |(11)5555-6666 |"O campo CEP é obrigatório"       |
| Maria | Silva     |  Rua A     | São Paulo |09999-000  |              |"O campo Telefone é obrigatório"  |
| Maria | Silva     |  Rua A     | São Paulo |09999=000  |(11)5555-6666 |"Cadastro realizado com sucesso"  |




Esquema do Cenário: Campo obrigatório
Quando eu selecionar <cor>, <quantidade> e <tamanho> do item,
E clicar no botão "Adicionar ao carrinho"
Então o sistema deve exibir uma <mensagem> de alerta

Exemplos:
| cor   | tamanho   | quantidade  | mensagem                              |
| azul  |    M      |    2        | "Produto adicionado com sucesso"      |
|       |    G      |    1        | "Selecione a cor para continuar"      |
| verde |           |    4        | "Selecione o tamanho para continuar"  |
| rosa  |    P      |             | Selecione a quantidade para continuar"|





Cenário: Finalizar compra com dados válidos
Quando preencher os dados obrigatórios de faturamento, selecionar uma forma de entrega e uma forma de pagamento válida
E clicar no botão "Finalizar compra"
Então o sistema deve concluir o pedido com sucesso, exibindo uma mensagem de confirmação


Cenário: Cadastrar cliente com todos os dados obrigatórios preenchidos
Quando o cliente preencher todos os campos obrigatórios marcados com asterisco, informar um e-mail válido e clicar no botão de cadastrar
Então o cadastro deve ser concluído com sucesso


Esquema do Cenário: Validar limite de quantidade de produtos por venda
Quando o cliente selecinar uma cor válida, um tamanho válido, a quantidade <quantidade> e clicar no botão de adicionar ao carrinho
Então o sistema deve apresentar o resultado <resultado>

Exemplos:
| quantidade | resultado                                      |
| 1          | Produto adicionado ao carrinho                 |
| 10         | Produto adicionado ao carrinho                 |
| 11         | Quantidade máxima permitida é de 10 produtos   |
| 0          | A quantidade deve ser obrigatória e válida     |


Cenário: Configurar produto com sucesso
Quando selecionar a cor "Azul", o tamanho "M", a quantidade "2"
E clicar no botão "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho



Funcionalidade: Login na Plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: 
Dado que o cliente esteja na pagina de autenticação da EBAC-SHOP

Cenário: Login válido
Quando inserir username e password corretos
Então deve ser direcionado para tela de checkout

Cenário: Login com senha incorreta
Quando inserir username correto e password incorreto
Então deve ser exibido a mensagem "Usuário ou senha inválidos"

Cenário: Login com usuário incorreto
Quando inserir username incorreto epassword correto
Então de ser exibido a mensagem "Usuário ou senha inválidos"

Cenário: Login com todos os campos inválidos
Quando inserir username e password incorretos
Então deve ser exibido a mensagem "Usuário ou senha inválidos"

