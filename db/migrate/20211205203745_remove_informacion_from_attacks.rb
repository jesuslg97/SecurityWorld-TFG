class RemoveInformacionFromAttacks < ActiveRecord::Migration[6.1]
  def change
    remove_column :attacks, :informacion, :string
  end
end
