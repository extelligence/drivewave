class WelcomeController < ApplicationController
  def index
    if current_user?
      render "home"
    else
      render "index"
    end
  end
end
