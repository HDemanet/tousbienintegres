# app/controllers/admin/dashboard_controller.rb
class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def index
    @total_responses = SurveyResponse.count
    @recent_responses = SurveyResponse.recent.limit(10)
    @stats_by_city = SurveyResponse.stats_by_city
    @stats_by_age = SurveyResponse.stats_by_age
    @stats_by_years = SurveyResponse.stats_by_years_in_belgium

    # Statistiques engagement
    @volunteers_count = SurveyResponse.where("interests LIKE ?", "%newsletter%").count
    @electoral_registered = SurveyResponse.where(electoral_registration: 'Oui').count

    # Articles
    @published_articles = Article.published.limit(5)
    @draft_articles = Article.drafts.limit(5)
  end

  private

  def check_admin
    unless current_user.admin?
      redirect_to root_path, alert: "Accès non autorisé"
    end
  end
end
