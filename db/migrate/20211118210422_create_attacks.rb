class CreateAttacks < ActiveRecord::Migration[6.1]
  def change
    create_table :attacks do |t|
      t.string :nombre
      t.string :informacion
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
