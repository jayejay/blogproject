class StaticPagesController < ApplicationController

  def welcome
    render :layout => 'coming_soon'
  end

end