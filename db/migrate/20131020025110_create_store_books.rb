class CreateStoreBooks < ActiveRecord::Migration
  def change
    create_table :store_books do |t|
      t.column :store_id, :integer, :null => false
      t.column :book_id, :integer, :null => false
      t.column :price, :integer
    end
  end
end
