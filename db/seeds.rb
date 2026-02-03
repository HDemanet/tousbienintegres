# db/seeds.rb

puts "🌱 Starting seed..."

# Candidates
puts "🗑️  Cleaning candidates..."
Candidate.destroy_all

puts "📸 Creating candidates with photos..."

# Pierre-Luc
pierre_luc = Candidate.create!(
  name: "Pierre-Luc Vervandier",
  country: :belgique,
  city: "Bruxelles",
  position: 0,
  featured: true,
  bio: <<~HTML
    En Belgique depuis 15 ans, j'habite et travaille dans le quartier européen de Bruxelles pour une organisation française. Mon épouse est belge et supporte ma "francitude" : je crois avoir plutôt bien réussi mon intégration !

    Depuis 10 ans, je contribue à l'animation de la vie locale en prenant diverses responsabilités au sein de mon Comité de quartier. Sur ce petit périmètre, nous avons toutes les nationalités du continent européen et même au-delà.

    Dans ma rue qui parle toutes les langues, j'ai concrètement fait l'expérience qu'il était possible pour des personnes aux nationalités et origines différentes d'avoir un vrai vivre ensemble avec la population belge même si celui-ci nécessite des efforts de part et d'autre.

    Avec notre revue annuelle de quartier distribuée dans toutes les boîtes aux lettres, nos brocantes, nos petites fêtes de rue, nos mobilisations efficaces sur des projets urbanistiques d'ampleur (projets de tours de la rue de la Loi notamment), nous avons su, depuis plusieurs décennies déjà, montrer aux pouvoirs publics locaux qu'étranger n'était en aucun cas synonyme d'indifférence à l'environnement local.

    Engagé au Mouvement démocrate de longue date, je suis responsable de la section pays du Benelux et coanimateur du groupe de réflexion et de propositions Europe, International & Défense de notre formation politique. J'étais candidat aux élections consulaires de 2021, aux élections européennes de 2024 sur la liste Besoin d'Europe et aussi aux législatives de 2024 dans le Nord de la France pour porter la spécificité transfrontalière et valoriser l'intégration européenne dans un territoire en repli vers l'extrême droite.

    Conseiller des Français de l'étranger, j'aurais à cœur d'être à votre écoute, de relayer vos attentes au plus haut et de militer pour la bonne intégration de chacun d'entre nous.
  HTML
)

# Attacher la photo
pierre_luc_photo_path = Rails.root.join('app/assets/images/team/pierre-luc-vervandier.jpg')
if File.exist?(pierre_luc_photo_path)
  pierre_luc.photo.attach(
    io: File.open(pierre_luc_photo_path),
    filename: 'pierre-luc-vervandier.jpg',
    content_type: 'image/jpeg'
  )
  puts "✅ Created: #{pierre_luc.name} (with photo)"
else
  puts "⚠️  Photo not found: #{pierre_luc_photo_path}"
  puts "✅ Created: #{pierre_luc.name} (without photo)"
end

# Lionel
lionel = Candidate.create!(
  name: "Lionel Autret",
  country: :pays_bas,
  city: "Leiden",
  position: 1,
  featured: true,
  bio: <<~HTML
    De nationalité franco-américaine, je suis marié et père de famille. Nous habitons à Leiden depuis 4 ans et je travaille dans le secteur bancaire.

    Je ne suis pas encore tout à fait "Bien intégré" mais c'est bien mon objectif et c'est pourquoi je souhaite m'investir dans cette élection et espérer devenir prochainement Conseiller des Français de l'étranger aux Pays-Bas. Il y a encore tant à faire ici ! Dynamisation du réseau associatif, donner un coup de boost à la coopération culturelle et à l'offre d'apprentissage du français.

    De mes années aux États-Unis, je retiens que la démocratie est un trésor fragile. Nous devons tout faire pour préserver et défendre l'idéal qui l'accompagne. C'est bien aussi cela le sens de mon engagement chez les Français de l'étranger du Mouvement démocrate.
  HTML
)

# Attacher la photo
lionel_photo_path = Rails.root.join('app/assets/images/team/lionel-autret.jpg')
if File.exist?(lionel_photo_path)
  lionel.photo.attach(
    io: File.open(lionel_photo_path),
    filename: 'lionel-autret.jpg',
    content_type: 'image/jpeg'
  )
  puts "✅ Created: #{lionel.name} (with photo)"
else
  puts "⚠️  Photo not found: #{lionel_photo_path}"
  puts "✅ Created: #{lionel.name} (without photo)"
end

puts "\n✨ Seed completed! Created #{Candidate.count} candidates."
