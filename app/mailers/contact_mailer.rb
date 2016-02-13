class ContactMailer < ApplicationMailer
  default to: "korotchenko.liza@gmail.com"

  def contact_email(contact)
    @contact = contact
    mail(from: contact.email, subject: 'Someone writes you!')
  end

end
