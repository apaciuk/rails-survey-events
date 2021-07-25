class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.belongs_to :survey, null: false, foreign_key: true
      t.string :name, null: false, default: ""
      t.string :email, null: false, default: ""

      t.timestamps
    end
  end
end
