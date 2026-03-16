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

# Mathilde Adjutor
mathilde = Candidate.create!(
  name: "Mathilde Adjutor",
  country: :belgique,
  city: "Ixelles, région bruxelloise",
  position: 11,
  featured: true,
  photo_path: "team/mathilde.jpg",
  bio: <<~HTML
    <p>Née à Paris, je vis à Bruxelles depuis une dizaine d’années, au cœur de la vie européenne. Je suis venue pour le travail, d’abord comme stagiaire, avant de m’y installer durablement.</p>
    <p>Je travaille dans les affaires européennes, où j’ai toujours évolué dans le secteur privé, en représentant des entreprises sur des enjeux qui touchent notamment au numérique et à la mobilité. Ce parcours me permet d’observer au quotidien comment les décisions européennes se construisent et l’impact concret qu’elles peuvent avoir sur notre vie économique et sociale.</p>
    <p>Ayant moi-même vécu presque quinze ans en dehors de la France dans mon enfance, je connais bien les réalités de la vie à l’étranger : l’adaptation à un nouvel environnement, le maintien des liens avec son pays d’origine tout en s’intégrant dans la vie locale, et la richesse des échanges entre différentes cultures.</p>
    <p>Diplômée de Sciences Po Paris, je m’implique également dans l’animation du réseau d’alumni de mon école en Belgique, convaincue que les Français établis à l’étranger ont un rôle particulier à jouer pour faire vivre les échanges, les solidarités et les dynamiques européennes.</p>
  HTML
)
puts "✅ Created: #{mathilde.name}"

# Alexandre Coulon
alexandre = Candidate.create!(
  name: "Alexandre Coulon",
  country: :belgique,
  city: "Liège",
  position: 12,
  featured: true,
  photo_path: "team/alexandre.jpg",
  bio: <<~HTML
    <p>Franco-Belge, j’ai vécu toute ma vie en Belgique.</p>
    <p>Je suis membre du parti des Engagés et de Génération Engagés.  Je suis trésorier de Génération Engagés pour la ville de Liège. </p>
    <p>Les Engagés et le MoDem ont beaucoup d'idées communes que l'on retrouve au niveau local. C'est pour cela que j'ai souhaité m'impliquer dans cette campagne.</p>
    <p>Je suis Area Sales Expert dans l’industrie responsable de toute la Wallonie, GD Luxembourg et Bruxelles. Je connais bien les particularités de ces différentes régions.</p>
  HTML
)
puts "✅ Created: #{alexandre.name}"

# Elisa Cabrera-Clerget
elisa = Candidate.create!(
  name: "Elisa Cabrera-Clerget",
  country: :belgique,
  city: "Auderghem, région bruxelloise",
  position: 13,
  featured: true,
  photo_path: "team/elisa.jpg",
  bio: <<~HTML
    <p>Je suis étudiante en dernière année d’Affaires Internationales à la VUB. Installée à Bruxelles depuis presque trois ans, je m’y plaît beaucoup avec cet atmosphère très internationale.</p>
    <p>Binationale franco-allemande (un fruit de l’Union européenne) et ayant grandi dans plusieurs pays en tant qu’enfant d’expatriés, il était naturel pour moi de poursuivre un parcours tourné vers l’international. Cet engagement se montre dans ma volonté de m’impliquer politiquement.</p>
    <p>Je suis née en Belgique, avant de vivre successivement en Jordanie, au Burundi, en France, au Danemark et à Madagascar, pour finalement revenir en Belgique. Ce parcours m’a permis de connaître de près la réalité de la vie à l’étranger, avec ses défis mais aussi les opportunités hors norme qu’elle offre.</p>
    <p>Ayant toujours été scolarisée dans des lycées français à l’étranger, je comprends particulièrement bien les démarches administratives, les enjeux éducatifs et les préoccupations quotidiennes des Français à l’étranger.</p>
  HTML
)
puts "✅ Created: #{elisa.name}"

# Véronique Daussy
veronique = Candidate.create!(
  name: "Véronique Daussy",
  country: :belgique,
  city: "Bruxelles",
  position: 14,
  featured: true,
  photo_path: "team/veronique.jpg",
  bio: <<~HTML
    <p>Originaire d'Aix en Provence, de parents Champenois et Lorrain, j'ai passé une partie de mon enfance en Asie et dans les Caraïbes, parcours de vie qui m'a doté d'une ouverture culturelle internationale.</p>
    <p>Européenne convaincue, après avoir terminé mes études de droit européen et international et un an aux États-Unis, je suis arrivée à Bruxelles en 1988 pour un contrat de 2 ans comme expert externe à la Commission européenne.</p>
    <p>Tombée amoureuse de Bruxelles, j'ai décidé d'y poser mes valises. Après maintes expériences professionnelles dans le secteur privé et semi-public, j'ai finalement rejoint l’Agence européenne pour l'Éducation et la Culture qui met en œuvre une partie des programmes de l'Union européenne.</p>
    <p>Ma vie de famille m'a amenée à vivre 13 ans en Flandre et le reste majoritairement à Bruxelles. Ayant vécu presque deux-tiers de ma vie ici, je considère la Belgique comme mon deuxième pays.</p>
    <p>Je me suis très bien intégrée en Belgique, ce, en partie grâce à d'autres expatriés, qui, installés depuis plus longtemps que moi, m'ont apporté un soutien important. Je voudrais aujourd'hui pouvoir rendre un peu de ce qui m'a été alors donné.</p>
  HTML
)
puts "✅ Created: #{veronique.name}"

# Thibaut Lemahieu
thibaut = Candidate.create!(
  name: "Thibaut Lemahieu",
  country: :belgique,
  city: "Mouscron, province du Hainaut",
  position: 15,
  featured: true,
  photo_path: "team/thibaut.jpg",
  bio: <<~HTML
    <p>Franco-belge, je suis né à Roubaix en France et j’ai grandi à Mouscron en Belgique, où mes parents se sont installés lorsque j’avais six ans. J’ai donc grandi entre ces deux cultures qui font aujourd’hui pleinement partie de mon identité.</p>
    <p>Diplômé en droit et en sciences politiques, j’ai développé mon expérience professionnelle dans le secteur public et associatif, notamment comme conseiller à l’emploi, coordinateur de projets et attaché politique. Ces fonctions m’ont permis de travailler au plus près des citoyens et de collaborer avec de nombreux acteurs institutionnels.</p>
    <p>Engagé politiquement, je suis aujourd’hui coordinateur de l’organisation de jeunesse politique Génération Engagée, partenaire belge de notre famille politique au niveau européen. </p>
    <p>Installé à Mouscron, ville frontalière de Tourcoing, Wattrelos et Roubaix, je suis particulièrement attentif aux enjeux rencontrés par les Français établis en Belgique ainsi qu’aux réalités vécues par les nombreux travailleurs et familles frontalières. La qualité de leur représentation et le rôle qu’ils jouent dans le rayonnement et l’image de la France à l’étranger sont, à mes yeux, essentiels.</p>
  HTML
)
puts "✅ Created: #{thibaut.name}"

# Marie Barani
marie = Candidate.create!(
  name: "Marie Barani",
  country: :belgique,
  city: "Zaventem, province du Brabant flamand",
  position: 16,
  featured: true,
  photo_path: "team/marie.jpg",
  bio: <<~HTML
    <p>Française née aux Pays-Bas, j’ai grandi au Bénélux (Pays-Bas puis Belgique), travaillé en France, Suède puis Angleterre avant de retourner en Belgique.</p>
    <p>Mon parcours professionnel international dans le milieu juridique m’a permis d’apprécier les opportunités offertes par l’Europe mais aussi de faire face à des difficultés administratives propres aux Français de l’étranger, allant du mariage à la couverture des frais de santé ou la reconnaissance des années professionnelles acquises hors de Belgique. </p>
    <p>Je souhaiterais oeuvrer pour une facilitation de ces démarches administratives et une transparence de l’information et des formulaires nécessaires</p>
  HTML
)
puts "✅ Created: #{marie.name}"

# Julien Ciesielski
julien = Candidate.create!(
  name: "Julien Ciesielski",
  country: :belgique,
  city: "Jurbise, province de Hainaut",
  position: 17,
  featured: true,
  photo_path: "team/julien_c.jpg",
  bio: <<~HTML
    <p>Originaire de Douai, je suis installé en Belgique depuis 9 ans. Je suis père d'une petite fille de cinq ans. Installé dans le Hainaut, mes activités professionnelles sont complètement franco-belges et touchent à la fois le secteur de la construction et celui des énergies renouvelables. Je suis très impliqué dans la construction de logements économes en énergie pour les étudiants.</p>
    <p>Côté sport, je pratique l'aviron régulièrement. Que l'on soit seul ou en équipe sur l'aviron, la navigation nécessite un maintien d'équilibre constant. Ramer à deux ou à quatre, c'est un véritable travail de cohésion. On peut y voir des parallèles avec l'engagement politique au centre. Toujours chercher le point d'équilibre, et avancer dans la même direction. Aussi, composer habilement avec les forces des uns et des autres.</p>
    <p>En 9 ans, mon expérience la plus improbable en Belgique est incontestablement d'avoir navigué en aviron sur le pan incliné de Ronquières !</p>
    <p>Sensible à la problématique du sans-abrisme, j'ai été administrateur délégué durant trois ans d'une grande association belge en première ligne pour le soutien des plus précaires.</p>
    <p>La bonne intégration n'est pas l'affaire de quelques-uns mais l'affaire de tous. J'en suis sûr, chacun peut contribuer au bon vivre ensemble en fonction de son temps et de ses moyens. </p>
  HTML
)
puts "✅ Created: #{julien.name}"

# Thomas Ramiarinarivo
thomas = Candidate.create!(
  name: "Thomas Ramiarinarivo",
  country: :belgique,
  city: "Woluwe-Saint-Pierre, région bruxelloise",
  position: 18,
  featured: true,
  photo_path: "team/thomas.jpg",
  bio: <<~HTML
    <p>Je suis consultant dans les services financiers à Bruxelles. Je vis depuis 9 ans en Belgique, actuellement à Woluwe Saint Pierre. J’ai fait une partie de mes études supérieures en Allemagne dans le cadre du parcours franco-allemand de Sciences Po Aix-en-Provence. Pour des raisons professionnelles, j’ai également été amené à vivre dans d’autres pays européens, tels que le Luxembourg ou l’Autriche.</p>
    <p>J’ai connu Pierre-Luc par des cercles d’amis communs. J’ai pu le soutenir lors de ses nombreuses campagnes électorales à la fois en France et en Belgique. Au fil de nos discussions ainsi que de nos pérégrinations nocturnes, nous nous sommes découverts des valeurs communes, aussi bien européennes que culturelles.</p>
    <p>Être inscrit sur cette liste représente pour moi une manière concrète de soutenir, Pierre-Luc dans ses projets en faveur des français de Belgique afin de maintenir un lien de qualité entre les résidents expatriés et la représentation consulaire.</p>
  HTML
)
puts "✅ Created: #{thomas.name}"

# Nilsy Desaint
nilsy = Candidate.create!(
  name: "Nilsy Desaint",
  country: :belgique,
  city: "Kraainem, Brabant flamand",
  position: 19,
  featured: true,
  photo_path: "team/nilsy.jpg",
  bio: <<~HTML
    <p>En Belgique depuis 2015 pour un stage de master dans les affaires européennes, je travaille dans le secteur de la santé. J’ai choisi de m’investir localement d’abord au sein de l’antenne crainhemoise de la Ligue des Familles puis récemment au mouvement politique les Engagés. Mère de deux enfants franco-belgo-grecs, je partage la réalité de nombreux parents qui jonglent entre responsabilités professionnelles et familiales, sans pouvoir compter sur la proximité des grands-parents, d’où l’importance d’un réseau social apportant soutien et solidarité notamment via l’école. </p>
    <p>yant fait l’expérience d’une expatriation hors Europe (dont trois ans à Montréal), j’ai vécu la complexité des relations entre administrations notamment autour des questions fiscales, immobilières et de sécurité sociale. J’ai aussi accompagné un parent âgé d’abord soigné en France puis en maison de repos en Belgique, et géré – parfois avec difficultés – l’ensemble des papiers administratifs sans avoir moi-même de résidence fiscale ou compte bancaire sur le territoire national. Alors que la santé reste une priorité des citoyens lors des élections, qu’elles soient nationales ou européennes, l’Europe de la santé est loin d’être une réalité. </p>
    <p>Passionnée par les grands enjeux de société dont le développement et l’usage des nouvelles technologies et plus largement du rôle de l’innovation comme moteur de progrès, j’aimerais pouvoir contribuer à rendre les démarches administratives ou recherches de financement plus faciles d’accès pour les entrepreneurs qui démarrent en Belgique avec la France comme objectif de croissance, avant un déploiement européen voire mondial.</p>
  HTML
)
puts "✅ Created: #{nilsy.name}"

# Julien Dupont
julien_d = Candidate.create!(
  name: "Julien Dupont",
  country: :belgique,
  city: "Molenbeek-Saint-Jean, région bruxelloise",
  position: 20,
  featured: true,
  photo_path: "team/julien_d.jpg",
  bio: <<~HTML
    <p>Français installé en Belgique depuis 18 ans, je suis fonctionnaire fédéral engagé au service de l’intérêt général et pleinement intégré dans la vie locale.</p>
    <p>Coureur régulier, je participe chaque année aux 20 km de Bruxelles, un rendez-vous emblématique qui illustre mon attachement à cette ville et à sa communauté.</p>
    <p>Originaire de la banlieue parisienne et ayant également vécu à Lyon, je conserve des liens étroits avec la France, sa culture et ses enjeux pour les Français de l’étranger.</p>
    <p>Père de trois enfants binationaux, je suis particulièrement attentif aux questions d’éducation, de transmission et d’avenir pour nos familles expatriées.</p>
  HTML
)
puts "✅ Created: #{julien_d.name}"

puts "\n✨ Seed completed! Created #{Candidate.count} candidates."
