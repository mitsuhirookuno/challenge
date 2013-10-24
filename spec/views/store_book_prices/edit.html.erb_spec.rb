require 'spec_helper'

describe "store_book_prices/edit" do
  before(:each) do
    @store_book_price = assign(:store_book_price,
        stub_model( StoreBookPrice,
                    :price => "9876"
        )
    )
  end

  it "renders the edit store_book_prices form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", store_book_price_path(@store_book_price), "post" do
      assert_select "input#store_book_price_price[name=?]", "store_book_price[price]"
    end
  end
end
