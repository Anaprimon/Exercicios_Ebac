#language: pt

Funcionalidade: Configurar produto conforme tamanho, cor e quantidade

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho, gosto e  escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleção válida de produto
Dado que eu acessei a página de um produto na EBAC-SHOP
Quando eu seleciono a cor "Azul", o tamanho "G" e a quantidade "5"
E clico no botão "Comprar"
Então o sistema deve permitir a inserção do item no carrinho.

Cenário: Tentativa de compra sem selecionar campos obrigatórios
Dado que estou na página do produto
Quando eu tento adicionar ao carrinho sem selecionar cor ou tamanho
Então o sistema deve exibir um alerta informando que os campos são obrigatórios.

Cenário: Limite de quantidade por venda
Dado que escolhi a cor e o tamanho
Quando eu seleciono a quantidade "11"
Então o sistema deve exibir uma mensagem de erro e não permitir a inclusão no carrinho.

Cenário: Limpar configurações
Dado que eu já selecionei cor, tamanho e quantidade
Quando eu clico no botão "Limpar"
Então todas as seleções devem voltar ao estado original (vazio/padrão).

 Cenário: Configuração de produto
 Dado que estou feliz
 Quando comprar meu produto
 Então ficarei mais feliz ainda


Esquema do Cenário: Validar campos obrigatórios e formato de e-mail
Dado que estou na tela de cadastro de checkout
Quando eu preencho os campos <Nome>, <E-mail>, <Endereço> e clico em "Cadastrar"
Então o sistema deve exibir a <Mensagem> correspondente

Exemplos:
| Nome         | E-mail             | Endereço    | Mensagem                                        |
| "João Silva" | "joao@teste.com"   | "Rua A, 10" | "Cadastro realizado com sucesso"                |
| "Samuel"     | "samuel@teste.com" | "Rua A, 32" | "Cadastro realizado com "sucesso"               |
| "izabel"     | "izabel@teste.com" | "Rua A, 53" | "Cadastro realizado com sucesso"                |
| " (vazio)"   | "maria@teste.com"  | "Rua B, 20" | "Alerta: Preencha todos os campos obrigatórios" |
| Carlos A.    | "carlos@erro"      | "Rua C, 30" | "E-mail com formato inválido"                   |
| Ana Souza    | "(vazio)"          | "(vazio)"   | "Alerta: Preencha todos os campos obrigatórios" |
