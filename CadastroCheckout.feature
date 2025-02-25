#language: pt

#Critérios de Aceitação:
#1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
#2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
#3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

Funcionalidade: Cadastro na plataforma
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Cenário: Cadastro com todos os dados obrigatórios preenchidos corretamente
Dado que eu esteja na página de conclusão de cadastro
Quando eu preencher todos os campos obrigatórios marcados com asteriscos:
| Nome         | Richard Marques       |
| E-mail       | richard@plataforma.com.br |
| Senha        | senha@123           |
| Confirmação  | senha@123           |
E clicar no botão "Concluir Cadastro"
Então devo ser redirecionado para a página de finalização de compra


Cenário: Cadastro com formato de e-mail inválido
Dado que eu esteja na página de conclusão de cadastro
Quando eu preencher o campo de e-mail com "richard.plataforma.com.br"
E clicar no botão "Concluir Cadastro"
Então deve exibir uma mensagem de erro: "Formato de e-mail inválido"

Cenário: Tentativa de cadastro com campos obrigatórios vazios
Dado que eu esteja na página de conclusão de cadastro
Quando eu deixar os campos obrigatórios vazios:
| Nome         |                     |
| E-mail       |                     |
| Senha        |                     |
| Confirmação  |                     |
E clicar no botão "Concluir Cadastro"
Então deve exibir uma mensagem de alerta: "Preencha todos os campos obrigatórios"