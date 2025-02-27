            #language: pt

            Funcionalidade: Cadastro na plataforma
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na página de conclusão de cadastro

            Cenário: Cadastro bem-sucedido
            Quando preencher os campos <nome>, <email>, <senha> e <confirmação>
            E clicar no botão "Concluir Cadastro"
            Então devo ser redirecionado para a página de finalização de compra

            Cenário: Cadastro com formato de e-mail inválido
            Quando preencher o campo de e-mail com "richard.com.br"
            E clicar no botão "Concluir Cadastro"
            Então o sistema deve exibir a mensagem de erro: "Formato de e-mail inválido"

            Cenário: Tentativa de cadastro com campos obrigatórios vazios
            Quando deixar algum dos campos <nome>, <email>, <senha> e <confirmação> vazios
            E clicar no botão "Concluir Cadastro"
            Então o sistema deve exibir a mensagem de alerta: "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Cadastro de múltiplos usuários
            Quando preencher o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                     | senha       | mensagem                          |
            | "richard@plataforma.com.br" | "senha@123" | "Cadastro realizado com sucesso!" |
            | "ana@plataforma.com.br"     | "senha@111" | "Cadastro realizado com sucesso!" |
            | "joao@plataforma.com.br"    | "senha@456" | "Cadastro realizado com sucesso!" |
