# config/initializers/rails_admin/survey_response.rb
RailsAdmin.config do |config|
  config.model 'SurveyResponse' do
    navigation_label 'Enquête'
    label 'Réponses à l\'enquête'
    label_plural 'Réponses à l\'enquête'

    list do
      sort_by :created_at
      sort_reverse true

      field :id
      field :created_at do
        label "Date de réponse"
        strftime_format "%d/%m/%Y %H:%M"
      end
      field :first_name do
        label "Prénom"
      end
      field :last_name do
        label "Nom"
      end
      field :email
      field :city do
        label "Ville"
      end
      field :age_range do
        label "Âge"
      end
      field :years_in_belgium do
        label "Années en Belgique"
      end
      field :volunteer do
        label "Volontaire"
        formatted_value do
          bindings[:object].interests&.include?('Autre') ? '✓' : '-'
        end
      end
    end

    show do
      group :informations_personnelles do
        label "Informations personnelles"
        field :first_name
        field :last_name
        field :email
        field :gender
        field :postal_code
        field :city
        field :age_range
      end

      group :situation do
        label "Situation et ancrage"
        field :years_in_belgium
        field :professional_status
        field :employer_type
        field :children_schooling
      end

      group :administration do
        label "Relations administratives"
        field :french_admin_rating do
          label "Évaluation admin française"
        end
        field :belgian_admin_rating do
          label "Évaluation admin belge"
        end
        field :administrative_difficulties do
          label "Difficultés rencontrées"
          formatted_value do
            bindings[:object].administrative_difficulties&.join(', ')
          end
        end
      end

      group :engagement do
        label "Engagement consulaire"
        field :electoral_registration do
          label "Inscrit sur liste électorale"
        end
        field :contacted_elected do
          label "A contacté un élu"
        end
        field :interests do
          label "Intérêts"
          formatted_value do
            bindings[:object].interests&.join(', ')
          end
        end
      end

      group :commentaires do
        label "Commentaires"
        field :comments
      end

      group :rgpd do
        label "RGPD"
        field :consent do
          label "Consentement donné"
        end
        field :created_at do
          label "Date de soumission"
        end
      end
    end

    export do
      field :id
      field :created_at
      field :first_name
      field :last_name
      field :email
      field :gender
      field :postal_code
      field :city
      field :age_range
      field :years_in_belgium
      field :professional_status
      field :employer_type
      field :children_schooling
      field :french_admin_rating
      field :belgian_admin_rating
      field :administrative_difficulties do
        formatted_value do
          bindings[:object].administrative_difficulties&.join('; ')
        end
      end
      field :electoral_registration
      field :contacted_elected
      field :interests do
        formatted_value do
          bindings[:object].interests&.join('; ')
        end
      end
      field :comments
      field :consent
    end
  end
end
