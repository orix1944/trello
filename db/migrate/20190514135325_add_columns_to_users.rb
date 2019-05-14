class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :level, :integer,default: 0
    add_column :users, :title, :string,default: "5級"
  end
end
