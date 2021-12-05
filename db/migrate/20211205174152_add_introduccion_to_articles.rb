class AddIntroduccionToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :introduccion, :string
  end
end
