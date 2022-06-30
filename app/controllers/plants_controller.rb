class PlantsController < ApplicationController

    def index
        render json: Plant.all
    end

    def show
        render json: Plant.find_by(id: params[:id])
    end

    def create
        plant =  Plant.create(
            name: params[:name],
            image: params[:image],
            price: params[:price]
        )
        render json: plant, status: :created
    end
end