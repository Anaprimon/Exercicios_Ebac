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

