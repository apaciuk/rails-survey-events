class CreateSurveyEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :survey_events do |t|
    t.belongs_to :survey, null: false, foreign_key: true
    t.string :event_type
    t.json :payload

    t.timestamps

    end
  end
end
  