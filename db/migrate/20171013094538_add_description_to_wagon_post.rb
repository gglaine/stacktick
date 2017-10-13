class AddDescriptionToWagonPost < ActiveRecord::Migration[5.0]
  def change
    add_column :wagon_posts, :description, :text
  end
end
