class WelcomeController < ApplicationController
  def index
    if current_user?
      @motivation = Motivation.new
      render "home"
    else
      render "index"
    end
  end
end
