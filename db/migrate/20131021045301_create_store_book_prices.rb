class CreateStoreBookPrices < ActiveRecord::Migration
  def change
    create_table :store_book_prices do |t|
      t.integer :price
      t.column :store_book_id, :integer, :null => false

      t.timestamps
    end
  end
end
