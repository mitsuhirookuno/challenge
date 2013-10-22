class WelcomeController < ApplicationController

  skip_before_filter :require_login, :only => [:index, :new, :create]

  def index
    @books = Book.includes( :stores, :store_books => :store_book_price  ).load
    @stores = Store.all
  end

end
