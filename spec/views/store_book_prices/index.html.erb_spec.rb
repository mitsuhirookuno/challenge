require 'spec_helper'

describe "store_book_prices/index" do

  before(:each) do
    assign(:store_book_prices, [
      stub_model( StoreBookPrice,
        :price => "9876",
        :store_book => stub_model( StoreBook,
                                   :name => "",
                                   :store => stub_model( Store, :name => 'StoreName'),
                                   :book  => stub_model( Book, :name => 'BookName', :price => '1234' ) )
      )
    ])
  end

  it "renders a list of store_book_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "StoreName".to_s, :count => 1
    assert_select "tr>td", :text => "BookName".to_s, :count => 1
    assert_select "tr>td", :text => "9876".to_s, :count => 1
  end
end
