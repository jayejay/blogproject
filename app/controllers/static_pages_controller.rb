class StaticPagesController < ApplicationController

  def welcome
    render :layout => 'user_interface'
  end


end