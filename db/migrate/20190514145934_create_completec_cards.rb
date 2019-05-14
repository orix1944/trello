class CreateCompletecCards < ActiveRecord::Migration[5.2]
  def change
    create_table :completec_cards do |t|

      t.timestamps
    end
  end
end
