class StaticPagesController < ApplicationController
  
  def info
  	@html = HtmlData.find(1)
  end

  def prices
  	@html = HtmlData.find(2)
  end

  def map
  end

  def contact
  end

  def send_mail
    @name = params[:name]
    @email = params[:email]
    @company = params[:company]
    @phone = params[:phone]
    @subject = params[:subject]
    @message = params[:message]

    ContactMailer.send_contact(@name, @email, @company, @phone, @subject, @message).deliver!
    puts params
  end

end
