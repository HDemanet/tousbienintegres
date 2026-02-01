# app/controllers/contacts_controller.rb
class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :thank_you]

  def new
    # Formulaire de contact
  end

  def create
    # On gérera l'envoi d'email plus tard
    # Pour l'instant, on redirige juste vers thank_you

    @name = params[:name]
    @email = params[:email]
    @message = params[:message]

    if @name.present? && @email.present? && @message.present?
      # TODO: Envoyer un email
      redirect_to thank_you_contacts_path
    else
      flash.now[:alert] = "Veuillez remplir tous les champs"
      render :new, status: :unprocessable_entity
    end
  end

  def thank_you
    # Page de remerciement
  end
end
