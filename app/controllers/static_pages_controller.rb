# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def welcome
    render layout: 'user_interface'
  end

  def contact; end

  def landing_page
    @gaming_post = Post.joins(:category).where('categories.name = ? AND active = ?', 'Gaming',
                                               true).order(published_at: :desc).limit(1)
    @sports_post = Post.joins(:category).where('categories.name = ? AND active = ?', 'Sports',
                                               true).order(published_at: :desc).limit(1)
    @nutrition_post = Post.joins(:category).where('categories.name = ? AND active = ?', 'Nutrition',
                                                  true).order(published_at: :desc).limit(1)
    render layout: 'wider_layout'
  end

  def thanks
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    if verify_recaptcha
      UserMailer.contact_form(@email, @name, @message).deliver_now
      redirect_to contact_path, notice: 'Danke für deine Nachricht!'
    else
      redirect_to contact_path, alert: 'Das war wohl nichts :('
    end
  end

  def impressum; end

  def datenschutz; end
end
