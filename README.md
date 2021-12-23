# Projeto "Leitor CNAB"

Projeto criado com o intuito de importar dados de arquivo CNAB e mostrar o saldo das respectivas lojas.

# Ferramentas Utilizadas

- Ruby on Rails
- MySQL
- Sublime Text
- MySQL Workbench
- VirtualBox (Máquina Virtual do Ubuntu)

# Como Rodar

1. Fazer instalação padrão do Ruby, do MySQL e do Rails
2. Alterar os dados do arquivo **config/database.yml** para corresponder ao seu banco de dados local
3. Utilizando o terminal, executar o comando `rails db:migrate` para criar as tabelas do Banco de Dados
4. Em seguida, executar `rake db:seed` para gerar os dados base de Tipos de Transação
5. Por fim, colocar o programa para funcionar com `rails s` e acessá-lo de um navegador pelo endereço mostrado

# Como Usar

Por padrão, o programa abre na tela de **Transações**, onde existe um botão para importação do CNAB.
Quando um documento de CNAB é importado, ele automaticamente cria **Lojas** e faz a referência dessas com as Transações.
Caso seja preciso editar alguma Loja ou visualizar o **Saldo** dela, basta acessar a segunda opção da barra de navegação na parte de cima do site e clicar em **Mostrar** na Loja correspondente.