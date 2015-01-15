class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send_contact.subject
  #
  def send_contact(name, email, company, phone, subject, message)
    @greeting = message

    mail to: "anandas.tear@gmail.com", from: "prawdzik@domekmlodosci.pl", subject: "#{name}, #{email}, #{phone} #{", " + company} - #{subject}"
  end
end
