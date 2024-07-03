# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

 Chez_Antoine = {name: "Chez Antoine", address: "10 rue de Rivoli, 75004 Paris, France", phone_number: "04 56 78 90 12", category: "french"}
 La_Bella_Italia = {name: "La Bella Italia", address: "22 avenue Montaigne, 75008 Paris, France", phone_number: "06 12 34 56 78", category: "italian"}
 Sakura_Sushi = {name: "Sakura Sushi", address: "7 rue des Rosiers, 75004 Paris, France", phone_number: "01 23 45 67 89", category: "japanese"}
 Dragon = {name: "Dragon", address: "15 boulevard Saint-Germain, 75005 Paris, France", phone_number: "02 34 56 78 90", category: "chinese"}
 El_Mexicano = {name: "El Mexicano", address: "5 place de la République, 75011 Paris, France", phone_number: "09 87 65 43 21", category: "mexican"}

[Chez_Antoine, La_Bella_Italia, Sakura_Sushi , Dragon, El_Mexicano ].each do |attributes|
Restaurant.create!(attributes)
end
