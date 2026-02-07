# app/mailers/contact_mailer.rb
class ContactMailer < ApplicationMailer
  default from: 'noreply@tous-bien-integres.be'

  def send_contact(contact)
    @contact = contact

    mail(
      to: 'tousbienintegres@gmail.com',  # Email de réception
      reply_to: @contact.email,
      subject: "[Contact] #{@contact.subject}"
    )
  end
end
