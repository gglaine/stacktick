class CreateTechmemes < ActiveRecord::Migration[5.0]
  def change
    create_table :techmemes do |t|
      t.string :title
      t.string :source

      t.timestamps
    end
  end
end
