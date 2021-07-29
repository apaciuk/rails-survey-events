class Events::Survey::Created < Events::Survey::BaseEvent
 
    payload_attributes :fuel_type,
    :boiler_type,
    :current_room,
    :resettle,
    :convert_to_combi,
    :water_velocity,
    :new_room,
    :property_type,
    :over_sec_floor,
    :flue_ext_access,
    :flue_location,
    :flue_roof,
    :flue_position,
    :num_bed,
    :num_bath,
    :num_shower,
    :therm_valve,
    :user_id 
  
    def apply(survey)
    survey.fuel_type = fuel_type #string
    survey.boiler_type = boiler_type #string
    survey.current_room = current_room #string
    survey.resettle = resettle #boolean
    survey.convert_to_combi = convert_to_combi #boolean
    survey.water_velocity = water_velocity  #string
    survey.new_room = new_room #string
    survey.property_type = property_type #string
    survey.over_sec_floor = over_sec_floor #boolean
    survey.flue_ext_access = flue_ext_access #boolean
    survey.flue_location = flue_location #string
    survey.flue_roof = flue_roof #string
    survey.flue_position = flue_position #string
    survey.num_bed = num_bed #integer
    survey.num_bath = num_bath #integer
    survey.num_shower = num_shower #integer
    survey.therm_valve = therm_valve
    survey.user_id = user_id #string


    survey
    end
end