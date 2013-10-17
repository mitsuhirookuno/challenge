class WelcomeController < ApplicationController

  skip_before_filter :require_login, :only => [:index, :new, :create]

  def index
  end

end
