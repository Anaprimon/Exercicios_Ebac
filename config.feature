#language: pt

Funcionalidade: Configuração de Produtos

Como cliente Ebac-shop
Quero escolher meu produto
Para finalizar minha compra

Contexto: 
Dado que estou na página do produto

Cenário: Seleção do produto
Quando selecionar a cor "verde", tamanho "M", quantidade "2" e clicar em "Adicionar ao carrinho"
Então o sistema deve exibir a mensagem "Produto adicionado ao carrinho"


Cenário: Limpar produtos selecionados
Quando selecionar a cor, o tamanho e a quantidade do produto
E clicar no botão "Limpar" na página de seleção de produtos
Então o sistema deve voltar ao estado original


Esquema do Cenário: Limite máximo de 10 produtos por venda
Quando eu selecionar um produto e atribuir a <quantidade>
E clicar no botão "Comprar"
Então o portal deve exibir a <mensagem>
Exemplos:
| quantidade | mensagem                         |
|    09      | "Produto adicionado ao carrinho" |
|    10      | "Produto adicionado ao carrinho" |
|    11      | "Quantidade máxima excedida"     |
