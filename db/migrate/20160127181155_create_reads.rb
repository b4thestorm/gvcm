class CreateReads < ActiveRecord::Migration
  def change
    create_table :reads do |t|

      t.timestamps null: false
    end
  end
end
