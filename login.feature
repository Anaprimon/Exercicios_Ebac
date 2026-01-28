#language:pt 

Cenário: Cor, tamanho e quantidade foram selecionados
Quando selecionar cor, tamanho, quantidade e clicar no botão "comprar"
Então deve ser direcionado para a página de pagamento

Cenário: Compra falha por falta de informações
Quando não selecionar um dos 3 requisitos (cor, tamanho e quantidade) e clicar no botão "comprar"
Então o sistema deve mostrar uma mensagem de alerta, informando qual requisito não foi atendido

