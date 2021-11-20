class CreateExtraInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :extra_infos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :texto
      t.references :extra, null: false, foreign_key: true

      t.timestamps
    end
  end
end
