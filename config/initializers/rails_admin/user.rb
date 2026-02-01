# config/initializers/rails_admin/user.rb
RailsAdmin.config do |config|
  config.model 'User' do
    navigation_label 'Utilisateurs'

    list do
      field :id
      field :email
      field :first_name
      field :last_name
      field :admin
      field :created_at
    end

    show do
      field :id
      field :email
      field :first_name
      field :last_name
      field :admin
      field :created_at
      field :updated_at
      field :articles do
        label "Articles publiés"
      end
    end

    edit do
      field :email
      field :first_name do
        required true
      end
      field :last_name do
        required true
      end
      field :password do
        help "Laissez vide si vous ne voulez pas changer le mot de passe"
      end
      field :password_confirmation do
        help "Confirmez le nouveau mot de passe"
      end
      field :admin
    end
  end
end
