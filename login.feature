#language: pt

Funcionalidade: Configurar produto

Como cliente da Ebac-shop
Quero configurar meu produto
Para finalizar minha compra

Contexto: Dado que estou na tela do produto

            
Esquema do Cenário: Validar obrigatoriamente as seleções antes de inserir no carrinho.
Dado que o usuário possui cadastro válido
Quando eu seleciono a cor <cor>, tamanho <tamanho> e quantidade <quantidade>
Então o sistema deve exibir o <resultado>

Exemplos:
| cor  | tamanho | quantidade | resultado                                  |
| Azul | M       | 2          | permitir a inserção do produto no carrinho |
|      | M       | 2          | exibir mensagem de cor obrigatória         |
| Azul |         | 2          | exibir mensagem de tamanho obrigatório     |
| Azul | M       | 1          | exibir mensagem de quantidade obrigatória  |



Cenario: Deve permitir apenas 10 produtos por venda.
Quando eu seleciono a cor "Preto", informo a quantidade "11"
E clico no botão "Adicionar ao carrinho"
Então o sistema deve exibir mensagem informando que o limite máximo é 10 produtos por venda


Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
Dado que selecionei cor "Azul", tamanho "M" e quantidade 3
Quando eu clicar no botão "Limpar"
Então o sistema deve retornar todos os campos ao estado original
E nenhum campo deve permanecer selecionado
