require 'spec_helper'

describe WelcomeController do

  before(:each) do
    Book.create!( "name" => "MyString", "price" => "1200" )
    Store.create!( "name" => "MyString" )
  end

  describe "トップページ表示:GET 'index'" do

    it "httpステータスは200な事" do
      get 'index'
      response.should be_success
    end

    it "booksとstoresが設定されている事" do
      get 'index'
      response.should be_success
      assigns(:books ).should eq(Book.all )
      assigns(:stores).should eq(Store.all)
    end

  end

end
