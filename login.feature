#language:pt 

Cenário: Cor, tamanho e quantidade foram selecionados
Quando selecionar cor, tamanho, quantidade e clicar no botão "comprar"
Então deve ser direcionado para a página de pagamento

Cenário: Compra falha por falta de informações
Quando não selecionar um dos 3 requisitos (cor, tamanho e quantidade) e clicar no botão "comprar"
Então o sistema deve mostrar uma mensagem de alerta, informando qual requisito não foi atendido



Cenário: seleção de cor, tamanho e quantidade do produto
Quando escolho a cor "Preto", o tamanho "M", a quantidade "10" e clico em "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho com as especificações escolhidas

Cenário: seleção de cor, tamanho e quantidade do produto
Quando escolho a cor "Preto", o tamanho "M" e a quantidade "10"
E clico em "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho com as especificações escolhidas

Cenário: cadastro com campos vazios
Quando deixar de preencher algum campo obrigatório marcado com asterisco
E clicar em "Finalizar Cadastro"
Então o sistema deve exivir uma mensagem de erro "Por favor, preencha todos os campos obrigatórios"

Cenário: configurar produto
Quando configurar meu produto "camisa laranja xs", na quantidade "2" e inserir no carrinho
Então o sistema deve exibir a mensagem "produto salvo"


Esquema do Cenário: cadastra multiplos dados do usuário
Quando eu digitar <nome>, <sobrenome>, <endereço>, <cidade>, <país>, <cep>, <telefone> e <endereço de email>
Então deve exibir <mensagem> 

Exemplos:
| nome | sobrenome | endereço                  | cidade   | país     |  cep    |  telefone   |  endereço de email     | mensagem                             |
|Jose  | Ernesto   | rua Andrezino Arantes, 30 | Lisboa   | Portugal | 1813066 | 11999185061 | jose_ernesto@yahoo.com |compra finalizada com sucesso         |
|Maria |das Dores  | Rua Bonita, 45            | Curitiba | Brasil   | 08945   | 13996666996 | mariadores@email.com   | Formato de cep inválido              |
|João  | Silva     | Rua Feliz, 67             | Guará    | Brasil   |09770233 | 51oo555     | joaosilva@email.com    | Formato de telefone inválido         |
|Ana   | Souza     | Rua da Saudade, 900       | Maceió   | Brasil   |04266030 | 35997788998 | ana.email.com          | Formato de email inválido            |
|Bruno | Sales     |                           |          |          |05874999 | 11987654321 | brunosales@email.com   | Todos os campos devem ser preenchidos|


Cenário: cadastra multiplos dados do usuário
Quando eu digitar o nome "José", o sobrenome "Ernesto", o endereço "Rua Andrezinho Arantes, 30", a cidade "Lisboa", o país "Portugal", o cep "1813066, o telefone "11999185061
E o endereço de email "jose_ernesto@yahoo.com"
Então o sistema deve exibir uma mensagem "Compra finalizada com sucesso"


Cenário: Limpar as seleções e retornar ao estado original
Quando seleciono o tamanho "P", a cor "Azul", a quantidade "3" e clico no botão "limpar"
Então o tamanho, a cor e a quantidade devem voltar ao estado original


Cenário: Limpar as seleções e retornar ao estado original
Quando seleciono o tamanho "P", a cor "Azul", a quantidade "3" 
E clico no botão "limpar"
Então o tamanho, a cor e a quantidade devem voltar ao estado original

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
Quando eu preencho todos os campos obrigatórios marcados com asterisco, informo um e-mail válido "cliente@ebac.com" e clico no botão "Cadastrar"
Então o sistema deve realizar o cadastro com sucesso



