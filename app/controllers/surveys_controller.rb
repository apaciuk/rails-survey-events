class SurveysController < ApplicationController
skip_before_action :verify_authenticity_token, only: [:create, :destroy]
def create
    user_id = request.remote_ip
    Events::Survey::Created.create(payload: survey_params)
end
  
def destroy
end
private def survey_params
    params.require(:survey).permit( :fuel_type,
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
      :user_id)
  end
end