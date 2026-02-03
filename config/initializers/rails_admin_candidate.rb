RailsAdmin.config do |config|
  config.model 'Candidate' do
    list do
      field :position
      field :name
      field :country
      field :city
      field :featured
      field :photo do
        pretty_value do
          if bindings[:object].photo.attached?
            bindings[:view].tag(:img, { src: bindings[:view].url_for(bindings[:object].photo), style: 'max-width: 50px; max-height: 50px; border-radius: 50%;' })
          end
        end
      end
      field :created_at
    end

    edit do
      field :name do
        help 'Nom complet du candidat'
      end
      field :country, :enum do
        enum do
          Candidate.countries.keys
        end
        help 'Pays de résidence'
      end
      field :city do
        help 'Ville de résidence (ex: Bruxelles, Leiden, Luxembourg)'
      end
      field :bio, :ck_editor do
        help 'Biographie du candidat (HTML supporté)'
      end
      field :position do
        help 'Ordre d\'affichage (0 = premier, 1 = deuxième, etc.)'
      end
      field :featured do
        help 'Mettre en avant comme "Premier visage de la campagne"'
      end
      field :photo do
        help 'Photo du candidat (format carré recommandé, min 400x400px)'
      end
    end
  end
end
