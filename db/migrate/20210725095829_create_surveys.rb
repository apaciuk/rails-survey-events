class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.string :fuel_type
      t.string :boiler_type
      t.string :current_room
      t.boolean :resettle, null: false, default: false
      t.boolean :convert_to_combi, null: false, default: false
      t.string :water_velocity
      t.string :new_room
      t.string :property_type
      t.boolean :over_sec_floor, null: false, default: false
      t.boolean :flue_ext_access, null: false, default: false
      t.string :flue_location
      t.string :flue_roof
      t.string :flue_position
      t.integer :num_bed
      t.integer :num_bath
      t.integer :num_shower
      t.boolean :therm_valve, null: false, default: false
      t.boolean :deleted, null: false, default: false
      t.string :user_id, null: true, default: ""
      t.timestamps
    end
  end
end
