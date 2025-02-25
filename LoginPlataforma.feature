         #language: pt

         #Critérios de Aceitação:
         #1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
         #2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

         Funcionalidade: Login na plataforma
         Como cliente da EBAC-SHOP
         Quero me autenticar na plataforma
         Para visualizar meus pedidos

         Cenário: Autenticação válida
         Dado que eu acesse a página de autenticação da plataforma

         Cenário: Autenticação válida
         Quando eu digitar o usuário "Richard@plataforma.com.br"
         E a senha "senha@123"
         Então deve ser direcionado para a tela de checkout

         Cenário: Usuário inexistente
         Quando eu digitar o usuário "desconhecido@plataforma.com.br"
         E a senha "senha@123"
         Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

         Cenário: Usuário com senha inválida
         Quando eu digitar o usuário "Richard@plataforma.com.br"
         E a senha "123456"
         Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"