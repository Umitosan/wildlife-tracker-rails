class CreateSightings < ActiveRecord::Migration[5.0]
  def change
    create_table :sightings do |t|
      t.column :date, :date
      t.column :lat, :decimal
      t.column :lng, :decimal

      t.timestamps
    end
  end
end
