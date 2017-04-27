class StaticPagesController < ApplicationController

  def welcome
    render :layout => 'user_interface'
  end

  def contact
  end

  def thanks
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
    redirect_to contact_path, notice: 'Danke für deine Nachricht'
  end

end