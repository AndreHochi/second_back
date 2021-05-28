class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :name
      t.integer :user_id
      t.string :description
      t.string :duration
      t.string :seconds
      t.string :minutes
      t.string :hours
      t.string :days
      t.string :months
      t.string :years

      t.timestamps
    end
  end
end
