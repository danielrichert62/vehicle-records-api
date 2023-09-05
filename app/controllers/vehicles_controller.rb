class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def create
    @vehicle = Vehicle.new(
      year: params[:year],
      make: params[:make],
      model: params[:model],
    )
    if @vehicle.save #happy path
      render :show
    else #sad path
      render json: { errors: @vehicle.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
