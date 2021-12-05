class AddEnlacesToExtraInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :extra_infos, :enlaces, :string
  end
end
