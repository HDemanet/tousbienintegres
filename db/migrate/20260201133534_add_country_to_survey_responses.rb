class AddCountryToSurveyResponses < ActiveRecord::Migration[7.1]
  def change
    add_column :survey_responses, :country, :string
  end
end
