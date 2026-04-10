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
Quando deixo de prencher Nome "<nome>", Sobrenome "<sobrenome>", Email "<email>" ou Endereço "<endereco>"
E clico em "Cadastrar"
Então o sistema deve exibir a mensagem "<mensagem>"

Exemplos:
| nome  | sobrenome | email           | endereco     | mensagem                        |
|       | Silva     | maria@email.com | Rua A        | O campo Nome é obrigatório      |
| Maria | Silva     |                 | Rua A        | O campo Email é obrigatório     |
| Maria |           | maria@email.com | Rua A        | O campo Sobrenome é obrigatório |
| Maria | Silva     | maria@email.com |              | O campo Endereço é obrigatório  |



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

