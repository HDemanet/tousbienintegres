# app/models/contact.rb
class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :subject, :message, :consent

  validates :name, presence: { message: "Le nom doit être rempli" }
  validates :email, presence: { message: "L'email doit être rempli" },
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: "L'email n'est pas valide" }
  validates :subject, presence: { message: "Le sujet doit être rempli" }
  validates :message, presence: { message: "Le message doit être rempli" },
                      length: { minimum: 10, message: "Le message doit contenir au moins 10 caractères" }
  validates :consent, acceptance: { message: "Vous devez accepter la politique de confidentialité" }
end
