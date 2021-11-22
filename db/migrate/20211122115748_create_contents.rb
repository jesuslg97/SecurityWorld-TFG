class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :titulo
      t.string :informacion
      t.references :attack, null: false, foreign_key: true

      t.timestamps
    end
  end
end
