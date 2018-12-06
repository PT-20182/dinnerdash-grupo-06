# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(name: 'Larissa', email: 'lari@exemplo.com', password:'123456', password_confirmation: '123456', is_admin: true);
salada = Category.create(name: 'Saladas');
guarnicao = Category.create(name: 'Guarnições');
bebida = Category.create(name: 'Bebidas');
prato = Category.create(name: 'Prato Principal');
molho =  Category.create(name: 'Molhos');
salada_de_abacaxi = Meal.create(name: 'Salada de Abacaxi', description: 'Possui verduras e a alma dos seus entes queridos', price: 12.90,available: 'sim', category: salada);
salada_de_tomate = Meal.create(name: 'Salada de Tomate', description: 'Possui tomate', price: 98.54, available: 'sim', category: salada);
molho_branco = Meal.create(name: 'Molho Branco', description: 'Possui branco', price: 7.89, available: 'sim', category: molho);
vinho = Meal.create(name: 'Vinho Tinto', description: 'Possui uvas e pes franceses', price: 65.89, available: 'sim', category: bebida);
batata_frita = Meal.create(name: 'Batata Frita', description: 'Possui batata e oleo velho', price: 15.80, available: 'sim', category: guarnicao);
salada_de_abacaxi = Meal.create(name: 'Strogonoff de Frango', description: 'Possui frango e molho desconhecido', price: 78.56, available: 'sim', category: prato);
