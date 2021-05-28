class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.integer :before_id
      t.integer :after_id
      t.integer :delay

      t.timestamps
    end
  end
end
