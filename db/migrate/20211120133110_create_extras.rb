class CreateExtras < ActiveRecord::Migration[6.1]
  def change
    create_table :extras do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
