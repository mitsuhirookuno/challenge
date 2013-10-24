class StoreBookPricesController < ApplicationController

  before_action :set_store_book_price, only: [:show, :edit, :update, :destroy]
  skip_before_filter :require_login, :only => [:index, :new, :create]

  # GET /store_book_prices
  def index
    @store_book_prices = StoreBookPrice.includes( :store_book => [ :store_book_price, :book, :store ] ).load
  end

  # GET /store_book_prices/1
  def show
  end

  # GET /store_book_prices/1/edit
  def edit
  end

  # PATCH/PUT /store_book_prices/1
  def update
    respond_to do |format|
      if @store_book_price.update(store_book_price_params)
        format.html { redirect_to @store_book_price, notice: 'ストア別価格を更新しました！' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @store_book_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_book_prices/1
  def destroy
    @store_book_price.store_book.destroy
    respond_to do |format|
      format.html { redirect_to store_book_prices_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_store_book_price
    @store_book_price = StoreBookPrice.find( params[:id], include: ['store_book' => [ 'store', 'book' ]] )
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def store_book_price_params
    params.require(:store_book_price).permit( :price )
  end

end
