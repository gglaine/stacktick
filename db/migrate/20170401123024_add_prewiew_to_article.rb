class AddPrewiewToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :preview, :text
  end
end
