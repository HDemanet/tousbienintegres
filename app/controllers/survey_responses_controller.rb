# app/controllers/survey_responses_controller.rb
class SurveyResponsesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :thank_you]

  def new
    @survey_response = SurveyResponse.new
  end

  def create
    @survey_response = SurveyResponse.new(survey_response_params)

    if @survey_response.save
      redirect_to thank_you_survey_responses_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def thank_you
    # Page de remerciement après soumission
  end

  private

  def survey_response_params
    params.require(:survey_response).permit(
      :first_name, :last_name, :email, :gender, :country, :postal_code, :city,
      :age_range, :years_in_belgium, :professional_status, :employer_type,
      :children_schooling, :french_admin_rating, :belgian_admin_rating,
      :electoral_registration, :contacted_elected, :comments, :consent,
      administrative_difficulties: [],
      interests: []
    )
  end
end
