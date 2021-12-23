# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Creating all Transaction Types of the application
TransactionType.create(identifier: 1, name: "Débito", operation: 1)
TransactionType.create(identifier: 2, name: "Boleto", operation: 0)
TransactionType.create(identifier: 3, name: "Financiamento", operation: 0)
TransactionType.create(identifier: 4, name: "Crédito", operation: 1)
TransactionType.create(identifier: 5, name: "Recebimento Empréstimo", operation: 1)
TransactionType.create(identifier: 6, name: "Vendas", operation: 1)
TransactionType.create(identifier: 7, name: "Recebimento TED", operation: 1)
TransactionType.create(identifier: 8, name: "Recebimento DOC", operation: 1)
TransactionType.create(identifier: 9, name: "Aluguel", operation: 0)