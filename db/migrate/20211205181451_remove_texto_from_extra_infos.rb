class RemoveTextoFromExtraInfos < ActiveRecord::Migration[6.1]
  def change
    remove_column :extra_infos, :texto, :string
  end
end
