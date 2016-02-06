class AddCatIdToWatch < ActiveRecord::Migration
  def change
    add_column :watches, :category_id, :integer
  end
end
