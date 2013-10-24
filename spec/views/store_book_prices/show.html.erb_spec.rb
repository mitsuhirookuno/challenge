require 'spec_helper'

describe "store_book_prices/show" do
  before(:each) do
    @store_book_price = assign(:store_book_price,
      stub_model( StoreBookPrice,
        :price => "9876"
       )
    )
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/￥9,876/)
  end
end
