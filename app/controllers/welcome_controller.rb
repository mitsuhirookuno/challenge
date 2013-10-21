class WelcomeController < ApplicationController

  skip_before_filter :require_login, :only => [:index, :new, :create]

  def index
    @books = Book.find( :all )
    @stores = Store.find( :all )
  end

end
