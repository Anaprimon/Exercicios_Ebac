#language:pt 

Cenário: Autenticação Válida
Quando eu Digitar o usuario "kaio@ebac.com.br"
E a senha "akkakksm@123"
Então deve exibir uma mensagem de alerta "Usuario ou senha invalidos"

Esquema do Cenário: Autenticar multiplos usuário
Quando eu digitar o <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso
Exemplos:
| usuario           |  senha     | mensagem 
| kaio@ebac.com.br  | teste@123  | "Olá kaio
