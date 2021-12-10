class RemoveGeneralIdFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_reference :comments, :general, null: false, foreign_key: true
  end
end
