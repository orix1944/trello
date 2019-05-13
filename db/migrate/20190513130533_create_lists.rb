class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title,null: false,limit: 255

      t.timestamps
    end
  end
end
