class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.references :user
      t.references :indicator
      t.float :value

      t.timestamps
    end
    add_index :measurements, :user_id
    add_index :measurements, :indicator_id
  end
end
