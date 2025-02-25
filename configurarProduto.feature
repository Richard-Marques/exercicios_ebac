         #language: pt

         #Critérios de Aceitação:
         #1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
         #2 – Deve permitir apenas 10 produtos por venda
         #3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

         Funcionalidade: Configurar Produto
         Como cliente da EBAC-SHOP
         Quero configurar meu produto de acordo com meu tamanho e gosto
         Escolher a quantidade
         Para depois inserir no carrinho

         Cenário: Configurar produto com sucesso
         Dado que eu selecione o item
         E escolho o tamanho "M", a cor "Azul" e a quantidade "2"
         Quando eu clicar no botão "Adicionar ao Carrinho"
         Então deve exibir uma mensagem de sucesso "Item adicionado no carrinho"

         Cenário: Tentar adicionar produto sem selecionar cor, tamanho ou quantidade
         Dado que eu selecione o item
         E não escolhi o tamanho, a cor ou a quantidade
         Quando eu clicar no botão "Adicionar ao Carrinho"
         Então deve exibir uma mensagem de erro "Selecione cor, tamanho e quantidade para adicionar ao carrinho"

         Cenário: Produto maximo atingido
         Dado que eu selecionei o item
         E escolhi o tamanho "M", a cor "Azul" e a quantidade "11"
         Quando eu clicar no botão "Adicionar ao Carrinho"
         Então deve exibir uma mensagem de alerta "Quantidade máxima de 10 itens por venda atingida"

         Cenário: Limpar carrinho
         Dado que eu adicionei um item ao carrinho
         Quando eu clicar no botão "Limpar"
         Então o carrinho deve voltar ao estado original sem itens