class WelcomeController < ApplicationController
  def index
    if current_user?
      @motivation = Motivation.new
      @theme = Theme.new

      unless current_user.themes.first
        redirect_to new_theme_url
      else
        unless session[:theme_id]
          session[:theme_id] = current_user.themes.first.id
        end
        render "home"
      end
    else
      render "index"
    end
  end
end
