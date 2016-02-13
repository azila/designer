class ContactsController < ApplicationController

  def send_mail
    contact = Contact.new
    contact.name = params[:name]
    contact.email = params[:email]
    contact.phone = params[:phone]
    contact.message = params[:message]
    contact.save
    ContactMailer.contact_email(contact).deliver
    redirect_to root_path
  end
end