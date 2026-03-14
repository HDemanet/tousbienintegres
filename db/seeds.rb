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

    <p>Engagé au Mouvement démocrate de longue date, je suis responsable de la section pays du Benelux et co-animateur du groupe de réflexion et de propositions Europe, International & Défense de notre formation politique. J'étais candidat aux élections consulaires de 2021, aux élections européennes de 2024 sur la liste Besoin d'Europe et aussi aux législatives de 2024 dans le Nord de la France pour porter la spécificité transfrontalière et valoriser l'intégration européenne dans un territoire en repli vers l'extrême droite.</p>

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
    <p>Au Luxembourg depuis 5 ans, j'ai choisi de m'établir au Grand-Duché après avoir résidé de nombreuses années à Londres et Dubaï, des expériences riches en rencontres et en (més)aventures d'expatriation. Au Luxembourg, je me suis engagé dans diverses associations locales, et j'ai à cœur d'aider mes compatriotes dans leur intégration. Employé par une institution européenne, je soutiens le développement économique de notre Union et je vis l'Europe au quotidien avec ma famille franco-polonaise.</p>

    <p>Pour les Françaises et Français de l'étranger, je souhaite contribuer à un dialogue constructif avec notre pays d'accueil, faciliter l'accès à la langue et à la culture françaises, soutenir nos institutions éducatives et promouvoir nos échanges commerciaux.</p>
  HTML
)
puts "✅ Created: #{mathias.name}"

# Alice
alice = Candidate.create!(
  name: "Alice Bernard-Montini",
  country: :belgique,
  city: "Ixelles, région bruxelloise",
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
    <p>Je travaille au Parlement européen aux côtés de Sandro Gozi (Renew Europe) depuis 2020. J'ai auparavant travaillé à l'Assemblée nationale entre 2017 et 2020, après une première expérience au Parlement européen aux côtés de Philippe Juvin.</p>

    <p>J'ai étudié les lettres à l'Institut Catholique de Paris puis à Milan, avant d'obtenir un master en relations internationales à Milan et un Master 2 en affaires européennes à la Sorbonne. Installée en Belgique depuis début 2020, je suis pour Sandro Gozi les relations UE–Royaume-Uni ainsi que le suivi politique des dossiers sur lesquels il travaille.</p>

    <p>Mère de deux enfants et bientôt trois, je suis également active au sein de l'association LIGER, engagée pour la sauvegarde et la valorisation de l'architecture des fermes traditionnelles couvertes de genêts et de lauzes et des paysages du Pays des sources de la Loire.</p>
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

# Lou
lou = Candidate.create!(
  name: "Lou Héraudeau",
  country: :belgique,
  city: "Ixelles, région bruxelloise",
  position: 7,
  featured: true,
  photo_path: "team/lou.jpg",
  bio: <<~HTML
    <p>Étudiante en master 1 de sciences politiques, avec une spécialisation en Paix, Sécurité et Conflits à l'Université libre de Bruxelles, mon installation en Belgique est récente. Je suis rapidement tombée sous le charme de Bruxelles.</p>

    <p>Originaire d'une petite ville à côté de Nantes, je me suis d'abord expatriée à Malte pour y effectuer ma licence en relations internationales, puis en Espagne dans le cadre d'un Erasmus. Je suis donc très familière avec la vie d'expatriée française ainsi que le processus d'intégration.</p>

    <p>Mon engagement politique est récent, mais il s'inscrit dans une continuité logique : j'ai en effet eu l'occasion de travailler au consulat de l'ambassade de France à Malte en tant que vacataire consulaire en 2024. Je souhaite aujourd'hui mettre mon expérience d'expatriée, ainsi que ma connaissance concrète du travail consulaire à votre service pour représenter et soutenir la communauté française en Belgique.</p>
  HTML
)
puts "✅ Created: #{lou.name}"

# François-Xavier
francois = Candidate.create!(
  name: "François-Xavier Hen",
  country: :belgique,
  city: "Malines, province d'Anvers",
  position: 8,
  featured: true,
  photo_path: "team/francois_xavier.jpg",
  bio: <<~HTML
    <p>Eurofédéraliste, après avoir bien voyagé à travers notre continent, vécu plusieurs années en Allemagne, puis en Pologne, je me suis installé en Belgique en 2019 par envie de travailler au service de l'Union Européenne.</p>

    <p>Père de famille depuis peu, mon fils est allemand comme sa maman, français comme son papa, et réside au milieu de la Flandre comme ses parents.</p>

    <p>La bonne intégration dans notre lieu de vie n'est pas toujours facile. En province d'Anvers, nous sommes nombreux à venir d'un peu partout dans le monde. Il y a quelque chose d'assez magique à voir les liens qui peuvent se tisser localement entre des personnes aux origines si différentes.</p>

    <p>Avec mon épouse, nous nous sentons véritablement citoyens européens. Nous parlons chacun une langue différente au travail et nous en parlons deux autres à la maison. Qui aurait pu imaginer cela il y a cent ans ?</p>

    <p>Séduit par la démarche de Pierre-Luc, je l'ai rejoint afin d'aider nos compatriotes de l'étranger, malgré la distance et les difficultés.</p>
  HTML
)
puts "✅ Created: #{francois.name}"

# Pierre Cotte
pierre = Candidate.create!(
  name: "Pierre Cotte",
  country: :belgique,
  city: "Hoeilaart, province du Brabant flamand",
  position: 9,
  featured: true,
  photo_path: "team/pierre.jpg",
  bio: <<~HTML
    <p>En Belgique depuis 30 ans, j'ai occupé plusieurs postes à l'Otan puis au Conseil de l'Union européenne. Mon épouse est de nationalité américaine. Nous sommes installés en Flandre et vivons en famille recomposée.</p>

    <p>Mon fils, franco-américain, va à l'école belge. Mes deux beaux fils sont belges.</p>

    <p>Très engagé au sein de la Fédération de la fonction publique européenne, un syndicat apolitique, je suis secrétaire général de la section Conseil.</p>

    <p>Musicien, on pourrait dire semi-professionnel, je suis tout autant classique que jazz.</p>

    <p>Côté origines, c'est l'Alsace et la Lorraine : des régions où j'apprécie encore me rendre beaucoup. Tant de beaux espaces... Vous connaissez aussi ?</p>

    <p>Tout bientôt à la retraite, j'aurais à cœur d'occuper la fonction de Conseiller des Français de l'étranger afin de pouvoir soutenir les Français dans leurs démarches.</p>

    <p>La bonne intégration est un concept dans lequel je me retrouve complètement. En effet, durant toute ma carrière, j'ai veillé à ce que les nouveaux collègues s'intègrent au mieux dans les institutions. Pas toujours évident ; un univers de travail assez spécifique tout de même, avec ses codes, ses exigences.</p>

    <p>J'ai souvent été sollicité pour donner des conseils administratifs et fiscaux aux fonctionnaires français qui arrivaient à Bruxelles. Je l'ai fait avec plaisir. En étant déjà bien installés, il est de notre devoir d'aider ceux qui arrivent.</p>

    <p>Je passerai ma retraite en Belgique car c'est ici que je me sens bien. Avec déjà trois décennies de Belgique au compteur, je suis plus que bien intégré mais j'ai toujours la même joie de faire découvrir le plat pays et ses habitants aux nouveaux arrivants. Je suis déjà heureux de pouvoir vous rencontrer durant la campagne.</p>
  HTML
)
puts "✅ Created: #{pierre.name}"

# Loic Delorme
loic = Candidate.create!(
  name: "Loïc Delorme",
  country: :belgique,
  city: "Etterbeek, région bruxelloise",
  position: 10,
  featured: true,
  photo_path: "team/loic.jpg",
  bio: <<~HTML
    <p>Franco-irlandais et originaire du Rhône, j'ai déménagé à Bruxelles directement après mes études et pile au début de la covid-19. J'ai donc l'expérience des difficultés administratives de la vie d'expatrié !</p>

    <p>J'ai travaillé dans les affaires publiques de grandes entreprises françaises et je travaille actuellement pour la représentation d'une ONG pour la transition énergétique de nos logements.</p>

    <p>Démocrate depuis plus de dix ans, je suis européen convaincu, chose d'autant plus concret à Bruxelles.</p>

    <p>J'espère pouvoir rejoindre l'équipe consulaire afin de représenter cette perspective mais surtout pour être en soutien aux nouveaux arrivants qui sont les moins visibles mais les plus en besoin de soutien.</p>
  HTML
)
puts "✅ Created: #{loic.name}"

puts "\n✨ Seed completed! Created #{Candidate.count} candidates."
