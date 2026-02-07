# app/controllers/admin/survey_responses_controller.rb
module Admin
  class SurveyResponsesController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin!

    def export
      @responses = SurveyResponse.order(created_at: :desc)

      respond_to do |format|
        format.csv do
          headers['Content-Disposition'] = "attachment; filename=\"reponses-enquete-#{Date.today}.csv\""
          headers['Content-Type'] = 'text/csv; charset=utf-8'
        end
      end
    end

    def destroy
      @response = SurveyResponse.find(params[:id])
      @response.destroy

      redirect_to admin_root_path, notice: "Réponse supprimée avec succès"
    end

    private

    def authorize_admin!
      unless current_user.admin?
        redirect_to root_path, alert: "Accès refusé"
      end
    end
  end
end
