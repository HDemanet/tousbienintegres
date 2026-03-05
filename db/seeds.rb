# db/seeds.rb

puts "🌱 Starting seed..."

# Candidates
puts "🗑️  Cleaning candidates..."
Candidate.destroy_all

puts "📸 Creating candidates..."

# Pierre-Luc - CORRIGÉ
pierre_luc = Candidate.create!(
  name: "Pierre-Luc Vervandier",
  country: :belgique,
  city: "Bruxelles",
  position: 0,
  featured: true,
  photo_path: "team/pierre-luc-vervandier.jpg",
  # linkedin_url laissé vide pour l'instant
  bio: <<~HTML
    <p>En Belgique depuis 15 ans, j'habite et travaille dans le quartier européen de Bruxelles pour une organisation française. Mon épouse est belge et soutient ma "francitude" : je crois avoir plutôt bien réussi mon intégration !</p>

    <p>Depuis 10 ans, je contribue à l'animation de la vie locale en prenant diverses responsabilités au sein de mon Comité de quartier. Sur ce petit périmètre, nous avons toutes les nationalités du continent européen et même au-delà.</p>

    <p>Dans ma rue qui parle toutes les langues, j'ai concrètement fait l'expérience qu'il était possible pour des personnes aux nationalités et origines différentes d'avoir un vrai vivre ensemble avec la population belge même si celui-ci nécessite des efforts de part et d'autre.</p>

    <p>Avec notre revue annuelle de quartier distribuée dans toutes les boîtes aux lettres, nos brocantes, nos petites fêtes de rue, nos mobilisations efficaces sur des projets urbanistiques d'ampleur (projets de tours de la rue de la Loi notamment), nous avons su, depuis plusieurs décennies déjà, montrer aux pouvoirs publics locaux qu'étranger n'était en aucun cas synonyme d'indifférence à l'environnement local.</p>

    <p>Engagé au Mouvement démocrate de longue date, je suis responsable de la section pays du Benelux et coanimateur du groupe de réflexion et de propositions Europe, International & Défense de notre formation politique. J'étais candidat aux élections consulaires de 2021, aux élections européennes de 2024 sur la liste Besoin d'Europe et aussi aux législatives de 2024 dans le Nord de la France pour porter la spécificité transfrontalière et valoriser l'intégration européenne dans un territoire en repli vers l'extrême droite.</p>

    <p>Conseiller des Français de l'étranger, j'aurai à cœur d'être à votre écoute, de relayer vos attentes au plus haut et de militer pour la bonne intégration de chacun d'entre nous.</p>
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
  # linkedin_url laissé vide pour l'instant
  bio: <<~HTML
    <p>Breton d'origine et fier d'être Français, je suis aussi de nationalité américaine. Marié et père de trois enfants qui s'apprêtent bientôt à entrer à l'université, je vis à Leiden depuis quatre ans, où notre famille binationale s'intègre tout en essayant de conserver un lien fort avec notre famille en France et avec la culture française en général.</p>

    <p>Mon parcours d'expatriation — en Asie, aux États-Unis puis aux Pays‑Bas — ressemble sans doute à celui de beaucoup d'entre vous et m'a donné, par la force des choses, une solide expérience des démarches administratives, juridiques et fiscales entre la France et l'étranger. Je travaille aujourd'hui dans une entreprise locale mais très internationale, ce qui me permet d'avoir des perspectives variées sur l'intégration, la barrière de la langue, le système éducatif et, plus largement, sur les défis auxquels les Français des Pays‑Bas sont confrontés au quotidien.</p>

    <p>C'est dans cet esprit que je souhaite m'engager comme Conseiller des Français de l'étranger. Le consulat et les associations jouent un rôle essentiel, mais nous pouvons aller plus loin en soutenant la coopération culturelle et en facilitant l'apprentissage du français, en particulier pour les familles binationales. Je souhaite aussi rendre l'intégration plus simple pour les Français aux Pays‑Bas, qu'il s'agisse d'éducation, d'emploi ou de démarches administratives.</p>

    <p>Mon engagement politique est récent, mais il s'enracine dans mes années passées aux États‑Unis, où j'ai compris combien la démocratie peut évoluer si l'on ne participe pas. Voter reste essentiel pour faire entendre notre voix. J'ai choisi le Mouvement Démocrate pour son attachement au dialogue et aux valeurs démocratiques, ainsi que pour l'efficacité qu'apporte une structure politique pour travailler avec les conseillers et les élus et faire remonter les besoins du terrain.</p>
  HTML
)
puts "✅ Created: #{lionel.name}"

# Mathias
mathias = Candidate.create!(
  name: "Mathias Angonin",
  country: :luxembourg,
  city: "Luxembourg",
  position: 2,
  featured: true,
  photo_path: "team/mathias.jpg",
  # linkedin_url laissé vide pour l'instant
  bio: <<~HTML
    <p>Au Luxembourg depuis 5 ans, j’ai choisi de m’établir au Grand-Duché après avoir résidé de nombreuses années à Londres et Dubaï, des expériences riches en rencontres et en (més)aventures d’expatriation. Au Luxembourg, je me suis engagé dans diverses associations locales, et j’ai à cœur d’aider mes compatriotes dans leur intégration. Employé par une institution européenne, je soutiens le développement économique de notre Union et je vis l’Europe au quotidien avec ma famille franco-polonaise.</p>

    <p>Pour les Françaises et Français de l'étranger, je souhaite contribuer à un dialogue constructif avec notre pays d’accueil, faciliter l’accès à la langue et à la culture françaises, soutenir nos institutions éducatives et promouvoir nos échanges commerciaux.</p>
  HTML
)
puts "✅ Created: #{mathias.name}"

# Alice
alice = Candidate.create!(
  name: "Alice Bernard-Montini",
  country: :belgique,
  city: "Bruxelles",
  position: 3,
  featured: true,
  photo_path: "team/alice.jpg",
  # linkedin_url laissé vide pour l'instant
  bio: <<~HTML
    <p>Âgée de 27 ans, je suis originaire du sud de la France. Venue à Bruxelles pour mes études, je tombe rapidement sous le charme de la ville et choisis de m'y installer durablement. J'y construis un parcours professionnel au cœur des affaires européennes, jusqu'à devenir directrice des opérations d'un think tank humaniste.</p>

    <p>Engagée depuis de nombreuses années au sein du Mouvement démocrate, je défends des valeurs d'inclusivité, de réflexion, de nuance et de travail inscrit dans le temps long. Cet engagement m'a conduite à devenir présidente des Jeunes Démocrates européens, une organisation de jeunesse pro & paneuropéenne œuvrant pour porter les valeurs de l'Union dans l'ensemble des pays européens et les rendre accessibles à toutes et tous.</p>

    <p>Pour les Françaises et Français de l'étranger, je porte une vision fondée sur l'équilibre entre l'intégration au pays de résidence et la préservation des spécificités de la culture française, pour les ressortissants comme pour leurs enfants, quelle que soit la durée de leur séjour ou de leur installation.</p>
  HTML
)
puts "✅ Created: #{alice.name}"

# Michel
michel = Candidate.create!(
  name: "Michel Grund",
  country: :pays_bas,
  city: "La Haye",
  position: 4,
  featured: true,
  photo_path: "team/michel-grund.jpg",
  # linkedin_url laissé vide pour l'instant
  bio: <<~HTML
    <p>Je m'appelle Michel Grund. Originaire de la Côte Basque, je vis à la Haye depuis 12 ans et ai été enchanté par les Pays-Bas et son mode de vie.</p>

    <p>Je travaille actuellement dans la coopération judiciaire internationale qui est la continuation professionnelle de mon désir d'aider et du besoin de justice.</p>

    <p>Démocrate de conviction, je suis animé par l'envie de l'échange, des débats et de trouver des solutions aux tracas et problèmes du quotidien, en particulier de nos compatriotes expatriés qui en ont bien besoin.</p>
  HTML
)
puts "✅ Created: #{michel.name}"

# Géraldine
geraldine = Candidate.create!(
  name: "Géraldine Geay",
  country: :belgique,
  city: "Bruxelles",
  position: 5,
  featured: true,
  photo_path: "team/Geraldine.jpg",
  bio: <<~HTML
    <p>Je travaille au Parlement européen aux côtés de Sandro Gozi (Renew Europe) depuis 2020. J’ai auparavant travaillé à l’Assemblée nationale entre 2017 et 2020, après une première expérience au Parlement européen aux côtés de Philippe Juvin.</p>

    <p>J’ai étudié les lettres à l’Institut Catholique de Paris puis à Milan, avant d’obtenir un master en relations internationales à Milan et un Master 2 en affaires européennes à la Sorbonne. Installée en Belgique depuis début 2020, je suis pour Sandro Gozi les relations UE–Royaume-Uni ainsi que le suivi politique des dossiers sur lesquels il travaille.</p>

    <p>Mère de deux enfants et bientôt trois, je suis également active au sein de l’association LIGER, engagée pour la sauvegarde et la valorisation de l’architecture des fermes traditionnelles couvertes de genêts et de lauzes et des paysages du Pays des sources de la Loire.</p>
  HTML
)
puts "✅ Created: #{geraldine.name}"

# Vincent
vincent = Candidate.create!(
  name: "Vincent Lisiak",
  country: :belgique,
  city: "Liège",
  position: 6,
  featured: true,
  photo_path: "team/Vincent.jpg",
  bio: <<~HTML
    <p>Français du Nord de naissance, la Belgique a toujours occupé une place particulière dans mon cœur. Ces escapades familiales de mon enfance, vécues avec une joie impatiente, ont tracé le chemin vers ma vie d'aujourd'hui.</p>

    <p>À 49 ans, je suis désormais installé en province de Liège depuis 5 ans. J'y ai trouvé une terre d'accueil où je me sens pleinement apprécié et intégré. C'est cette expérience sereine de l'expatriation que je souhaite partager et garantir à chacun d'entre vous.</p>

    <p>Parce que l'intégration est un chemin que l'on parcourt mieux à plusieurs, je souhaite mettre mon expérience et mon écoute au service de mes compatriotes.</p>

    <blockquote>
      <p>« Mon ambition est simple : vous apporter soutien et aide concrète pour que votre vie en Belgique soit aussi riche et épanouie que la mienne. Ensemble, faisons de notre présence dans ce beau pays une force commune. »</p>
    </blockquote>
  HTML
)
puts "✅ Created: #{vincent.name}"

# Fanny
fanny = Candidate.create!(
  name: "Fanny Lambert",
  country: :belgique,
  city: "Uccle",
  position: 7,
  featured: true,
  photo_path: "team/fanny.jpg",
  bio: <<~HTML
    <p>Je suis en Belgique depuis 10 ans, mère de deux enfants.</p>

    <p>Avec cinq compagnons de route, nous avons fondé une maison médicale à Uccle en 2021.</p>

    <p>Nous y accueillons une potentielle très variées, de proximité. Nous avons des missions de santé communautaire : pas seulement le soin mais bien au delà.</p>

    <p>Comme l'OMS, nous concevons la santé comme un état de complet de bien être physique mental et social.</p>

    <p>Nous participons à la vie de quartier.</p>

    <p>Notre patientèle forme une grand groupe mixte où les origines, les langues du monde entier, les niveaux de vie et les métiers se mélangent.</p>

    <p>Nous proposons notamment des temps de repas partagé (format auberge espagnole), des activités physiques (marche en forêt, gymnastique, aquagym), intellectuelles (cafés papotes), culturelles (visites de musées).</p>

    <p>Nous avons aussi une assistante sociale qui aide nos patients dans leurs parcours de réintégration professionnelle et des psychologues pour le suivi de santé mentale.</p>

    <p>Notre maison médicale participe très activement à la vie de quartier.</p>

    <p>Nous sommes fiers d'être acteurs de la bonne intégration de chacun dans la commune.</p>

    <p>Selon moi, etre bien intégré dans son lieu de vie, est primordial pour vivre en bonne santé.</p>

    <p>Je me retrouve donc complètement dans la démarche Tous bien intégrés en Belgique portée par Pierre-Luc.</p>
  HTML
)
puts "✅ Created: #{fanny.name}"

puts "\n✨ Seed completed! Created #{Candidate.count} candidates."
