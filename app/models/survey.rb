class Survey < ApplicationRecord
    has_many :events, class_name: "Events::Survey::BaseEvent" 

    has_and_belongs_to_many :users
end
