# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clean DB'
Product.destroy_all
Category.destroy_all
Rating.destroy_all
User.destroy_all

puts 'Create some categories'
tv = Category.create!(name: 'TV')
photo_video = Category.create!(name: 'Photo & Video')
son = Category.create!(name: 'Son')
ordinateur = Category.create!(name: 'Ordinateur')
telephonie = Category.create!(name: 'Téléphonie')
maison = Category.create!(name: 'Maison')

puts 'create some users'
sophie = User.create!(username: "srouchon", email: "sophie@gmail.com", password: "sophie")
baptiste = User.create!(username: "bcourt", email: "baptiste@gmail.com", password: "baptiste")

puts 'Create some products'
iphone11 = Product.new(
  name: "Apple iPhone 11 Pro", 
  snippet: "L'iPhone 11 Pro fait partie de la dernière fournée d'appareils d'Apple, sorti aux côtés des iPhone 11 et iPhone 11 Pro Max.",
  description: "Apple est confronté à une baisse des ventes d'iPhone dans le monde. L'iPhone 11 Pro est attendu pour redresser la barre et redonner de l'attrait aux smartphones marqués de la pomme. Cet iPhone 11 Pro recolle-t-il Apple à la concurrence ? Après un iPhone Xs qui validait le renouveau initié par l'iPhone X, Apple repasse aux bons vieux chiffres arabes avec l'iPhone 11. S'y accole un Pro en écho à la segmentation actuelle des MacBook et pour définir une ligne plus claire de la gamme de 2019. Un iPhone 11 en guise d'entrée et des iPhone 11 Pro et 11 Pro Max comme plat de résistance. Résistance, un terme qui s'applique aussi à la position d'Apple sur le marché des smartphones. Les iPhone se vendent moins bien, face à une concurrence féroce d'un Huawei — touché, mais pas encore coulé — ou d'un Samsung ragaillardi. Les Xiaomi, Oppo et OnePlus sont également à l'affût, mettant en avant leur force d'innovation. Longtemps sûr de ses forces, Apple semble avoir pris conscience de son besoin de recoller à la concurrence. Recoller seulement, sans prendre de l'avance pour autant, notamment en photo. L'iPhone 11 Pro a également mis fin à l'augmentation régulière des prix. Il faut dire que le prix d'attaque du smartphone d'Apple se place à 1 159 €, pour seulement 64 Go de mémoire interne. Il faut compter 1 329 € pour la version 256 Go et 1 559 € pour un modèle 512 Go. À ce tarif, on est en droit d'attendre qu'Apple fasse plus que simplement suivre la concurrence.",
  design: "Le design de l'iPhone 11 Pro n'évolue qu'à la marge par rapport à celui de l'iPhone Xs. Apple a repris les lignes introduites par l'iPhone X en 2017 pour son plus petit iPhone. L'iPhone 11 Pro est effectivement l'un des derniers smartphones haut de gamme à proposer un écran de moins de 6 pouces de diagonale. Par conséquent, il reste l'un des derniers à pouvoir être utilisé presque facilement d'une seule main. La marque à la pomme ne cède pas aux écrans à bords très fins. Ils restent ici bien plus présents que sur un Samsung Galaxy Note 10 ou un Huawei P30 Pro.",
  performance: "Après la puce A12 Bionic de l'iPhone Xs, place à... l'A13 Bionic. Les derniers modèles de smartphones d'Apple bénéficient d'un SoC revu pour offrir, principalement, une meilleure efficacité énergétique. L'augmentation des performances de l'iPhone 11 Pro par rapport à celles de son prédécesseur ne saute pas aux yeux. L'iPhone 11 Pro tourne comme un coucou suisse, quelle que soit la tâche qu'on lui soumet. Le passage entre les applications gourmandes se fait sans heurt et la fluidité reste le maître mot. Nous regrettons de ne pouvoir y faire tourner notre protocole habituel de tests de performance, à cause d'un iOS cadenassé. Pour le jeu vidéo, l'iPhone 11 Pro se place dans le haut du panier. Les titres très gourmands sont avalés par le smartphone d'Apple sans broncher et le débit semble ne jamais fléchir. On sent là tout le travail d'optimisation mené d'une part chez Apple et d'autre part chez les développeurs qui travaillent pour la plateforme iOS.",
  autonomy: "Apple a augmenté la capacité de la batterie de l'iPhone 11 Pro par rapport à celle du Xs. L'accumulateur passe de 2 658 à 3 046 mAh. La firme de Cupertino annonce un gain de 4 heures par rapport à la génération précédente. Nous avons effectivement constaté une hausse de l'endurance du dernier iPhone. Sur notre test de lecture vidéo sur Netflix, l'iPhone 11 Pro a tenu 14 h 28 min, soit un excellent score. Dans la pratique, une utilisation intensive du smartphone ne le verra pas expirer avant une bonne journée et demie. En utilisation standard, il sera tout à fait possible d'atteindre 2 jours complets. L'iPhone 11 Pro est livré avec un chargeur délivrant 18 W. Un pas de géant pour Apple, qui s'était contenté jusque-là de modestes chargeurs 5 W. Presque 4 ans après tout le monde, l'iPhone 11 Pro entre donc dans l'ère de la charge rapide — il était temps. Il faut compter 30 min pour passer de 10 à 65 % et environ 1 h de plus pour atteindre 100 %.",
  advantages: "Finitions impeccables, Excellent écran, Des photos de qualité, Performances très solides, Autonomie",
  disadvantages: "Un design qui n'évolue pas, Pas de prise mini-jack 3,5 mm ni d'adaptateur",
  images: "https://www.lesnumeriques.com/telephone-portable/apple-iphone-11-p52757/test.html",
  release_date: "2019"
)
iphone11.category = telephonie
iphone11.save!

puts 'Create some ratings'
rating1 = Rating.new(comment: "Very good product, can make beautiful pictures", rating: 5)
rating1.product = iphone11
rating1.user = sophie
rating1.save!

rating2 = Rating.new(comment: 'Price too expensive, no real change compare to the previous one. Disappointed', rating: 3)
rating2.product = iphone11
rating2.user = baptiste
rating2.save!

puts 'Done!'