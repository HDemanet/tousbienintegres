# db/migrate/XXXXXX_create_survey_responses.rb
class CreateSurveyResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :survey_responses do |t|
      # Informations personnelles
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :gender
      t.string :postal_code, null: false
      t.string :city, null: false
      t.string :age_range, null: false

      # Situation et ancrage
      t.string :years_in_belgium, null: false
      t.string :professional_status
      t.string :employer_type
      t.string :children_schooling

      # Relations administratives
      t.string :french_admin_rating, null: false
      t.string :belgian_admin_rating, null: false
      t.text :administrative_difficulties # JSON array stocké en texte

      # Engagement consulaire
      t.string :electoral_registration, null: false
      t.boolean :contacted_elected, default: false
      t.text :interests # JSON array stocké en texte

      # Espace libre
      t.text :comments

      # RGPD
      t.boolean :consent, null: false, default: false

      t.timestamps
    end

    add_index :survey_responses, :email
    add_index :survey_responses, :postal_code
    add_index :survey_responses, :created_at
  end
end
