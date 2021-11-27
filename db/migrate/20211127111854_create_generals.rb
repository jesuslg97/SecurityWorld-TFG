class CreateGenerals < ActiveRecord::Migration[6.1]
  def change
    create_table :generals do |t|
      t.string :titulo
      t.string :informacion
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
