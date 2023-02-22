# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

flat1 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}
flat2 = {
  name: 'Chambre simple lumineuse avec vue sur la montagne à Burglauen',
  address: '10 rue de la gare Burgluen',
  description: "L'établissement est juste à côté de la gare de Burglauenen. Toutes les 30 minutes, un train se dirige vers Grindelwald et Interlaken. Les magasins les plus proches se trouvent dans le terminal de Grindelwald, accessible en seulement 7 minutes en train. La Coop du terminal est ouverte du lundi au samedi de 8h à 18h et 365 jours. D'autres achats et plats à emporter peuvent être trouvés 3 minutes plus loin en train à Grindelwald Dorf. La Coop y est également ouverte le dimanche.",
  price_per_night: 80,
  number_of_guests: 1
}
flat3 = {
  name: 'Appartement "Bergzauber" 30m ², calme et tranquillité.',
  address: 'Pfeiffen, Freiburg',
  description: "Appartement avec toutes les commodités et une entrée privée. Votre point de départ idéal pour la randonnée, le vélo ou la baignade en été ainsi que pour le ski, la planche ou la raquette en hiver. En quelques minutes à pied, vous rejoindrez le lac et toutes ses attractions. ",
  price_per_night: 61,
  number_of_guests: 2
}
flat4 = {
  name: 'Propre appartement dans une ferme biologique',
  address: 'Trubschachen, Bern',
  description: "SIMPLEMENT suisse simple EMMENTAL simple BEAU...Au milieu du plus bel environnement rural, mais à deux pas des transports en commun et des sites touristiques, nous louons notre bijou au cœur de l'Emmental. Notre ferme biologique est située à environ 70 m au-dessus du village de Trubschachen dans un endroit calme et isolé.",
  price_per_night: 40,
  number_of_guests: 5
}
flat5 = {
  name: 'La Borbiatte, magnifique chalet au coeur du Jura',
  address: 'Boécourt, Jura',
  description: "Au coeur du canton du Jura, en Suisse, le hameau de Séprais se tient là, dans un écrin de verdure, en pleine campagne. Tout au bout de cette rue d'un vingtaine de fermes villageoises se trouve un grenier aménagé en duplex, appelé LA BORBIATTE. Séprais ne compte ni boulangerie, ni épicerie, ni restaurant mais vous trouverez tout cela à Boécourt (à 2,5km, 25 minutes à pied)",
  price_per_night: 140,
  number_of_guests: 4
}

[flat1, flat2, flat3, flat4, flat5].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
