class CreateTechcrunches < ActiveRecord::Migration[5.0]
  def change
    create_table :techcrunches do |t|
      t.string :title
      t.string :excerpt
      t.string :url

      t.timestamps
    end
  end
end
