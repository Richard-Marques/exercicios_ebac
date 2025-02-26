            #language: pt

            # Critérios de Aceitação:
            # 1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            # 2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            # 3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

            Funcionalidade: Cadastro na plataforma
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Esquema do Cenário: Cadastro com todos os dados obrigatórios preenchidos corretamente
            Dado que eu esteja na página de conclusão de cadastro
            Quando eu preencher todos os campos obrigatórios marcados com asteriscos:
            | Nome        | <nome>        |
            | E-mail      | <email>       |
            | Senha       | <senha>       |
            | Confirmação | <confirmacao> |
            E clicar no botão "Concluir Cadastro"
            Então devo ser redirecionado para a página de finalização de compra

            Exemplos:
            | nome            | email                     | senha     | confirmacao |
            | Richard Marques | richard@plataforma.com.br | senha@123 | senha@123   |
            | Ana Silva       | ana@plataforma.com.br     | senha@111 | senha@111   |
            | João Oliveira   | joao@plataforma.com.br    | senha@456 | senha@456   |

            Esquema do Cenário: Cadastro com formato de e-mail inválido
            Dado que eu esteja na página de conclusão de cadastro
            Quando eu preencher o campo de e-mail com "<email>"
            E clicar no botão "Concluir Cadastro"
            Então deve exibir uma mensagem de erro: "Formato de e-mail inválido"

            Exemplos:
            | email                     |
            | richard.plataforma.com.br |
            | ana.plataforma.com.br     |
            | joao.plataforma.com.br    |

            Esquema do Cenário: Tentativa de cadastro com campos obrigatórios vazios
            Dado que eu esteja na página de conclusão de cadastro
            Quando eu deixar os campos obrigatórios vazios:
            | Nome        | <nome>        |
            | E-mail      | <email>       |
            | Senha       | <senha>       |
            | Confirmação | <confirmacao> |
            E clicar no botão "Concluir Cadastro"
            Então deve exibir uma mensagem de alerta: "Preencha todos os campos obrigatórios"

            Exemplos:
            | nome | email | senha | confirmacao |
            |      |       |       |             |