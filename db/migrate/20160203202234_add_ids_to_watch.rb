class AddIdsToWatch < ActiveRecord::Migration
  def change
    add_column :watches, :video_id, :string
  end
end
