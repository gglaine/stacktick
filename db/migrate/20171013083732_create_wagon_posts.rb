class CreateWagonPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :wagon_posts do |t|
      t.string :title

      t.timestamps
    end
  end
end
