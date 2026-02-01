# config/initializers/rails_admin.rb
RailsAdmin.config do |config|
  config.asset_source = :importmap

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## Application name
  config.main_app_name = ["Tous bien intégrés", "Administration"]

  ## Parent controller
  config.parent_controller = 'ApplicationController'

  ## Show gravatar
  config.show_gravatar = true

  ## Navigation
  config.navigation_static_label = "Gestion"
  config.navigation_static_links = {
    'Voir le site' => '/',
  }

  ## Models to exclude
  config.excluded_models = []

  ## Actions
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export do
      only ['SurveyResponse']     # Export CSV uniquement pour les réponses
    end
    bulk_delete do
      except ['User']              # Empêcher suppression en masse des users
    end
    show
    edit
    delete do
      except ['SurveyResponse']    # Empêcher suppression individuelle des réponses (sécurité)
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
