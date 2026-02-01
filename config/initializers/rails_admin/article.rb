# config/initializers/rails_admin/article.rb
RailsAdmin.config do |config|
  config.model 'Article' do
    navigation_label 'Contenu'
    label 'Article'
    label_plural 'Articles'

    list do
      sort_by :updated_at
      sort_reverse true

      field :id
      field :title do
        label "Titre"
      end
      field :published do
        label "Publié"
      end
      field :published_at do
        label "Date de publication"
        strftime_format "%d/%m/%Y"
      end
      field :user do
        label "Auteur"
      end
      field :updated_at do
        label "Dernière modification"
        strftime_format "%d/%m/%Y %H:%M"
      end
    end

    show do
      field :title
      field :slug
      field :content do
        formatted_value do
          bindings[:view].simple_format(bindings[:object].content)
        end
      end
      field :published
      field :published_at
      field :user
      field :created_at
      field :updated_at
    end

    edit do
      field :title do
        required true
        help "Le titre de votre article"
      end
      field :content do
        required true
        html_attributes rows: 15
        help "Le contenu de votre article"
      end
      field :published do
        help "Cochez pour publier l'article sur le site"
      end
      field :user do
        help "L'auteur de l'article"
      end
    end

    create do
      field :title
      field :content
      field :published
    end
  end
end
