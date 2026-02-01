# app/models/ability.rb
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin?
      # Les admins peuvent tout faire
      can :manage, :all
      can :access, :rails_admin
      can :read, :dashboard

      # Mais ne peuvent PAS supprimer les réponses à l'enquête (protection des données)
      cannot :destroy, SurveyResponse
    else
      # Les utilisateurs non-admin ne peuvent rien faire dans l'admin
      cannot :access, :rails_admin
      cannot :read, :dashboard
    end
  end
end
