class AddPublisherToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :publisher, :string
  end
end
