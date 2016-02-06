class AddTagsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :tag, :string
  end
end
