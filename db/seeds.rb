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

# Lionel
lionel = Candidate.create!(
  name: "Lionel Autret",
  country: :pays_bas,
  city: "Leiden",
  position: 1,
  featured: true,
  photo_path: "team/lionel-autret.jpg",
  bio: <<~HTML
    Breton pur beurre, farouche citoyen Français mais également Américain par les hasards de la vie, je suis marié et père de trois enfants. Installée à Leiden depuis quatre ans, notre famille binationale vit les enjeux d'intégration, de bilinguisme et la nécessité de préserver un lien fort avec la langue et la culture française.

    Mon parcours d'expatriation — de Singapour aux États-Unis, puis aux Pays‑Bas — m'a apporté une solide expérience des démarches administratives, juridiques et fiscales entre la France et l'étranger. Travaillant depuis de nombreuses années dans des entreprises néerlandaises, je connais bien la culture locale, le système éducatif et les défis auxquels les Français sont confrontés : recherche d'emploi, reconnaissance des diplômes, entrepreneuriat, gestion de plusieurs systèmes de retraite et de fiscalité.

    C'est dans cet esprit que je souhaite m'investir dans l'élection des prochains Conseillers des Français de l'étranger aux Pays‑Bas. Beaucoup d'initiatives existent déjà, et le consulat et les associations existantes jouent un rôle précieux, mais nous pouvons aller plus loin : dynamiser notre réseau associatif, renforcer la coopération culturelle, développer l'apprentissage du français au‑delà du système AFE et offrir davantage de ressources pour maintenir un lien vivant avec la France et faciliter l'intégration des Français dans le tissu hollandais.

    Au-delà des questions du quotidien, mon engagement politique vient aussi de mes années aux États‑Unis, qui m'ont appris que la démocratie est un système fragile, susceptible d'évoluer très vite si l'on ne participe pas activement. Même sans militer, voter est essentiel : si nous ne faisons pas entendre notre voix, d'autres décideront à notre place, et il sera alors trop tard pour agir.

    C'est pour cela que j'ai choisi le Mouvement Démocrate, une formation qui travaille sans démagogie et cherche sincèrement à faire avancer les choses pour chacun. Cette appartenance permet d'échanger avec d'autres conseillers et avec les élus — députés comme ministres — afin de faire remonter les besoins de terrain et de défendre des valeurs de tolérance, d'unité et d'équité.
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

puts "\n✨ Seed completed! Created #{Candidate.count} candidates."# db/seeds.rb

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

# Lionel
lionel = Candidate.create!(
  name: "Lionel Autret",
  country: :pays_bas,
  city: "Leiden",
  position: 1,
  featured: true,
  photo_path: "team/lionel-autret.jpg",
  bio: <<~HTML
    Breton pur beurre, farouche citoyen Français mais également Américain par les hasards de la vie, je suis marié et père de trois enfants. Installée à Leiden depuis quatre ans, notre famille binationale vit les enjeux d'intégration, de bilinguisme et la nécessité de préserver un lien fort avec la langue et la culture française.

    Mon parcours d'expatriation — de Singapour aux États-Unis, puis aux Pays‑Bas — m'a apporté une solide expérience des démarches administratives, juridiques et fiscales entre la France et l'étranger. Travaillant depuis de nombreuses années dans des entreprises néerlandaises, je connais bien la culture locale, le système éducatif et les défis auxquels les Français sont confrontés : recherche d'emploi, reconnaissance des diplômes, entrepreneuriat, gestion de plusieurs systèmes de retraite et de fiscalité.

    C'est dans cet esprit que je souhaite m'investir dans l'élection des prochains Conseillers des Français de l'étranger aux Pays‑Bas. Beaucoup d'initiatives existent déjà, et le consulat et les associations existantes jouent un rôle précieux, mais nous pouvons aller plus loin : dynamiser notre réseau associatif, renforcer la coopération culturelle, développer l'apprentissage du français au‑delà du système AFE et offrir davantage de ressources pour maintenir un lien vivant avec la France et faciliter l'intégration des Français dans le tissu hollandais.

    Au-delà des questions du quotidien, mon engagement politique vient aussi de mes années aux États‑Unis, qui m'ont appris que la démocratie est un système fragile, susceptible d'évoluer très vite si l'on ne participe pas activement. Même sans militer, voter est essentiel : si nous ne faisons pas entendre notre voix, d'autres décideront à notre place, et il sera alors trop tard pour agir.

    C'est pour cela que j'ai choisi le Mouvement Démocrate, une formation qui travaille sans démagogie et cherche sincèrement à faire avancer les choses pour chacun. Cette appartenance permet d'échanger avec d'autres conseillers et avec les élus — députés comme ministres — afin de faire remonter les besoins de terrain et de défendre des valeurs de tolérance, d'unité et d'équité.
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

puts "\n✨ Seed completed! Created #{Candidate.count} candidates."