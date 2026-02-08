# app/models/ability.rb
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin?
      # Les admins peuvent tout faire
      can :manage, :all
      can :read, :dashboard
    else
      # Les utilisateurs non-admin ne peuvent rien faire dans l'admin
      cannot :manage, :all
      cannot :read, :dashboard
    end
  end
end