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


Esquema do Cenário: Fazer login com múltiplos conjuntos de credenciais
Quando preencho o campo email <email>  e senha <senha> e clico em "login"
Então o sistema deve exibir a mensagem <mensagem>

Exemplos:
| email                 | senha            | mensagem
| teste2024@email.com   | SenhaSegura123   | Seja bem vindo!
| teste2025@email.com   | Senhaerrada666   | Dados incorretos: Verifique as informações fornecidas
|                       | SenhaSegura345   | Verfique o email
| teste2026@email.com   |                  | Verifique a senha
