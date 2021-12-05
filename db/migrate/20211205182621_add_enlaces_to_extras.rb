class AddEnlacesToExtras < ActiveRecord::Migration[6.1]
  def change
    add_column :extras, :enlaces, :string
  end
end
