class CreateHackernews < ActiveRecord::Migration[5.0]
  def change
    create_table :hackernews do |t|
      t.string :title
      t.string :source

      t.timestamps
    end
  end
end
