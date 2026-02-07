# app/controllers/contacts_controller.rb
class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :thank_you]

  def new
    @contact = Contact.new
  end

  def create
    Rails.logger.info "SMTP settings: #{ActionMailer::Base.smtp_settings.inspect}"
    Rails.logger.info "Deliveries: #{ActionMailer::Base.deliveries.inspect}" if Rails.env.development?

    @contact = Contact.new(contact_params)
    Rails.logger.info "Tentative d'envoi d'email à partir de #{@contact.email}"

    if @contact.valid?
      begin
        ContactMailer.send_contact(@contact).deliver_now
        Rails.logger.info "Email envoyé avec succès"
        redirect_to thank_you_contacts_path, notice: "Votre message a été envoyé avec succès."
      rescue => e
        Rails.logger.error "Erreur lors de l'envoi de l'email: #{e.message}"
        Rails.logger.error e.backtrace.join("\n")
        flash.now[:alert] = "Une erreur s'est produite lors de l'envoi. Veuillez réessayer plus tard."
        render :new, status: :unprocessable_entity
      end
    else
      Rails.logger.info "Validation échouée: #{@contact.errors.full_messages.join(', ')}"
      render :new, status: :unprocessable_entity
    end
  end

  def thank_you
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message, :consent)
  end
end
