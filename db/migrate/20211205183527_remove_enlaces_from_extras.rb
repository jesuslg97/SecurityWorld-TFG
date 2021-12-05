class RemoveEnlacesFromExtras < ActiveRecord::Migration[6.1]
  def change
    remove_column :extras, :enlaces, :string
  end
end
