class AddFieldsToReads < ActiveRecord::Migration
  def change
    add_column :reads, :body, :text 
    add_column :reads, :title, :string
    add_column :reads, :author, :string
  end
end
