class AddToCompletecCards < ActiveRecord::Migration[5.2]
  def change
    add_reference :completec_cards,:user,index: true
  end
end
