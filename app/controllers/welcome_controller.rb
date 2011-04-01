class WelcomeController < ApplicationController
  def index
    if current_user?
      @motivation = Motivation.new
      @theme = Theme.new
      unless session[:theme_id]
        session[:theme_id] = current_user.themes.first.id
      end
      render "home"
    else
      render "index"
    end
  end
end
