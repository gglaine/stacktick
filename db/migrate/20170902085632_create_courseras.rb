class CreateCourseras < ActiveRecord::Migration[5.0]
  def change
    create_table :courseras do |t|

      t.timestamps
    end
  end
end
