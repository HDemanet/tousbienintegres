# db/seeds.rb

puts "🌱 Starting seed..."

# Candidates
puts "🗑️  Cleaning candidates..."
Candidate.destroy_all

puts "📸 Creating candidates..."

# Pierre-Luc
pierre_luc = Candidate.create!(
  name: "Pierre-Luc Vervandier",
  country: :belgique,
  city: "Bruxelles",
  position: 0,
  featured: true,
  photo_path: "team/pierre-luc-vervandier.jpg",
  bio: <<~HTML
    En Belgique depuis 15 ans, j'habite et travaille dans le quartier européen de Bruxelles pour une organisation française. Mon épouse est belge et supporte ma "francitude" : je crois avoir plutôt bien réussi mon intégration !

    Depuis 10 ans, je contribue à l'animation de la vie locale en prenant diverses responsabilités au sein de mon Comité de quartier. Sur ce petit périmètre, nous avons toutes les nationalités du continent européen et même au-delà.

    Dans ma rue qui parle toutes les langues, j'ai concrètement fait l'expérience qu'il était possible pour des personnes aux nationalités et origines différentes d'avoir un vrai vivre ensemble avec la population belge même si celui-ci nécessite des efforts de part et d'autre.

    Avec notre revue annuelle de quartier distribuée dans toutes les boîtes aux lettres, nos brocantes, nos petites fêtes de rue, nos mobilisations efficaces sur des projets urbanistiques d'ampleur (projets de tours de la rue de la Loi notamment), nous avons su, depuis plusieurs décennies déjà, montrer aux pouvoirs publics locaux qu'étranger n'était en aucun cas synonyme d'indifférence à l'environnement local.

    Engagé au Mouvement démocrate de longue date, je suis responsable de la section pays du Benelux et coanimateur du groupe de réflexion et de propositions Europe, International & Défense de notre formation politique. J'étais candidat aux élections consulaires de 2021, aux élections européennes de 2024 sur la liste Besoin d'Europe et aussi aux législatives de 2024 dans le Nord de la France pour porter la spécificité transfrontalière et valoriser l'intégration européenne dans un territoire en repli vers l'extrême droite.

    Conseiller des Français de l'étranger, j'aurais à cœur d'être à votre écoute, de relayer vos attentes au plus haut et de militer pour la bonne intégration de chacun d'entre nous.
  HTML
)
puts "✅ Created: #{pierre_luc.name}"

# Lionel - TEXTE MODIFIÉ
lionel = Candidate.create!(
  name: "Lionel Autret",
  country: :pays_bas,
  city: "Leiden",
  position: 1,
  featured: true,
  photo_path: "team/lionel-autret.jpg",
  bio: <<~HTML
    Breton d'origine et fier d'être Français, je suis aussi de nationalité américaine. Marié et père de trois enfants qui s'apprêtent bientôt à entrer à l'université, je vis à Leiden depuis quatre ans, où notre famille binationale s'intègre tout en essayant de conserver un lien fort avec notre famille en France et avec la culture française en général.

    Mon parcours d'expatriation — en Asie, aux États-Unis puis aux Pays‑Bas — ressemble sans doute à celui de beaucoup d'entre vous et m'a donné, par la force des choses, une solide expérience des démarches administratives, juridiques et fiscales entre la France et l'étranger. Je travaille aujourd'hui dans une entreprise locale mais très internationale, ce qui me permet d'avoir des perspectives variées sur l'intégration, la barrière de la langue, le système éducatif et, plus largement, sur les défis auxquels les Français des Pays‑Bas sont confrontés au quotidien.

    C'est dans cet esprit que je souhaite m'engager comme Conseiller des Français de l'étranger. Le consulat et les associations jouent un rôle essentiel, mais nous pouvons aller plus loin en soutenant la coopération culturelle et en facilitant l'apprentissage du français, en particulier pour les familles binationales. Je souhaite aussi rendre l'intégration plus simple pour les Français aux Pays‑Bas, qu'il s'agisse d'éducation, d'emploi ou de démarches administratives.

    Mon engagement politique est récent, mais il s'enracine dans mes années passées aux États‑Unis, où j'ai compris combien la démocratie peut évoluer si l'on ne participe pas. Voter reste essentiel pour faire entendre notre voix. J'ai choisi le Mouvement Démocrate pour son attachement au dialogue et aux valeurs démocratiques, ainsi que pour l'efficacité qu'apporte une structure politique pour travailler avec les conseillers et les élus et faire remonter les besoins du terrain.
  HTML
)
puts "✅ Created: #{lionel.name}"

# Alice
alice = Candidate.create!(
  name: "Alice Bernard-Montini",
  country: :belgique,
  city: "Bruxelles",
  position: 2,
  featured: true,
  photo_path: "team/alice.jpg",
  bio: <<~HTML
    Âgée de 27 ans, je suis originaire du sud de la France. Venue à Bruxelles pour mes études, je tombe rapidement sous le charme de la ville et choisis de m'y installer durablement. J'y construis un parcours professionnel au cœur des affaires européennes, jusqu'à devenir directrice des opérations d'un think tank humaniste.

    Engagée depuis de nombreuses années au sein du Mouvement démocrate, je défends des valeurs d'inclusivité, de réflexion, de nuance et de travail inscrit dans le temps long. Cet engagement m'a conduite à devenir présidente des Jeunes Démocrates européens, une organisation de jeunesse pro & paneuropéenne œuvrant pour porter les valeurs de l'Union dans l'ensemble des pays européens et les rendre accessibles à toutes et tous.

    Pour les Françaises et Français de l'étranger, je porte une vision fondée sur l'équilibre entre l'intégration au pays de résidence et la préservation des spécificités de la culture française, pour les ressortissants comme pour leurs enfants, quelle que soit la durée de leur séjour ou de leur installation.
  HTML
)
puts "✅ Created: #{alice.name}"

# Michel - NOUVEAU
michel = Candidate.create!(
  name: "Michel Grund",
  country: :pays_bas,
  city: "La Haye",
  position: 3,
  featured: true,
  photo_path: "team/michel-grund.jpg",
  bio: <<~HTML
    Je m'appelle Michel Grund. Originaire de la Côte Basque, je vis à la Haye depuis 12 ans et ai été enchanté par les Pays-Bas et son mode de vie.

    Je travaille actuellement dans la coopération judiciaire internationale qui est la continuation professionnelle de mon désir d'aider et du besoin de justice.

    Démocrate de conviction, je suis animé par l'envie de l'échange, des débats et de trouver des solutions aux tracas et problèmes du quotidien, en particulier de nos compatriotes expatriés qui en ont bien besoin.
  HTML
)
puts "✅ Created: #{michel.name}"

puts "\n✨ Seed completed! Created #{Candidate.count} candidates."
