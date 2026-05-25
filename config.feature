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



Cenário: Configuração válida do produto
Quando eu selecionar a cor, o tamanho e a quantidade desejada do produto
E clicar no botão "Comprar"
Então o produto deve ser adicionado ao carrinho


Cenário: Botão limpar deve retornar ao estado original
Dado que o cliente esteja na página de configuração do produto
Quando selecionar a cor "Blue", o tamanho "M", a quantidade "2" e clicar no botão "Limpar"
Então as configurtações devem voltar ao estado original 

Cenário: Não configurar o produto
Quando eu não escolher o tamanho, a cor ou a quantidade do produto
E clicar na opção Comprar
Então deve exibir uma mensagem de alerta "Selecione as configurações do produto para continuar"

Cenário: Configurar o produto
Quando eu escolher o tamanho, a cor e a quantidade do produto dentro limite de até 10 unidades
E clicar na opção Comprar
Então deve exibir uma mensagem de confirmação "Produto adicionado ao carrinho com sucesso"

Esquema do Cenário: Validação do cadastro no checkout
Dado que estou na tela de cadastro
Quando insiro o nome <nome>, o e-mail <email>, o endereço <endereco> e o telefone <telefone>
Então o sistema deve exibir <mensagem>


Cenário: Botão limpar restaura estado original
Dado que estou na página de um produto
Quando eu seleciono a cor "Preto", o tamanho "P", a quantidade "5" e clico em "Limpar"
Então as configurações devem voltar ao estado original


Cenário: Cadastro com todos os dados obrigatórios preenchidos
Dado que estou na página de cadastro
Quando eu preencho todos os campos obrigatórios marcados com asterisco e clico em "Cadastrar"
Então meu cadastro deve ser realizado com sucesso e devo ser direcionado para a tela de finalização
