class CampersController < ApplicationController

    def index
        render json: Camper.all
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, serializer: CamperShowSerializer
    end

    def create
        camper = Camper.create!(name: params[:name], age: params[:age])
        render json: camper, status: :created
    end
end
