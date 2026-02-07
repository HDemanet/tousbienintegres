# app/controllers/admin/dashboard_controller.rb
module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin!

    def index
      # Statistiques rapides
      @total_responses = SurveyResponse.count
      @electoral_registered = SurveyResponse.where(electoral_registration: 'Oui').count
      @volunteers_count = SurveyResponse.where("interests LIKE ?", "%Recevoir notre newsletter%").count

      # Toutes les réponses avec pagination (30 par page)
      @all_responses = SurveyResponse.order(created_at: :desc).page(params[:page]).per(30)

      # Articles
      @published_articles = Article.published
      @draft_articles = Article.drafts
    end

    private

    def authorize_admin!
      unless current_user.admin?
        redirect_to root_path, alert: "Accès refusé"
      end
    end
  end
end
