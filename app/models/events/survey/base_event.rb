class Events::Survey::BaseEvent < Events::BaseEvent
    self.table_name = "survey_events"

    belongs_to :survey, class_name: "::Survey"

    #has_many :users
end