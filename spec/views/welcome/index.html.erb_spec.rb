require 'spec_helper'

describe "welcome/index.html.erb" do

  before(:each) do
# ToDo : stubでmodelを再現出来る様にする
=begin
    assign(:books, [
        stub_model(Book,
                   :name => "BookName",
                   :price => "1200",
                   :stores => [ stub_model( Store, :name => 'StoreName' ) ],
                   :store_books => [
                     stub_model( StoreBook,
                                 :store_book_price => stub_model( StoreBookPrice, :price => "1000"  ) )
                   ]
        )
    ])

    assign(:stores, [
        stub_model(Store,
                   :name => "StoreName"
        )
    ])
=end

    store    = Store.create!( name: 'StoreName' )
    book = Book.create!( name: 'BookName', price: 410 )
    store.books << book
    store.set_book_price( book, 368 )
    assign( :books, [ book ] )
    assign( :stores, [ store ] )
  end

  it "renders a list of users" do

    render
    # @books = Book.includes( :stores, :store_books => :store_book_price  ).load
    assert_select "tr>td", :text => "BookName".to_s, :count => 1
    assert_select "tr>th", :text => "StoreName".to_s, :count => 1

  end

end
