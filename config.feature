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
