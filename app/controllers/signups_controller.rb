class SignupsController < ApplicationController

    def create
        signup = Signup.create!(camper_id: params[:camper_id], activity_id: params[:activity_id], time: params[:time])
        signup_activity = signup.activity
        render json: signup_activity, status: :created
    end
end
