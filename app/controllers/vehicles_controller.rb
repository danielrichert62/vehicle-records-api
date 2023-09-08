class VehiclesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def show
    @vehicle = Vehicle.find_by(id: params["id"])
    render :show
  end

  def index
    @vehicles = Vehicle.all

    if current_user
      @vehicles = current_user.vehicles
      render :index #template: "vehicle/index"
    else
      render json: { message: "Please Log in to see the vehicles" }, status: :unauthorized
    end
  end

  def create
    @vehicle = Vehicle.new(
      user_id: current_user.id,
      year: params[:year],
      make: params[:make],
      model: params[:model],
      image_url: params[:image_url],
    )
    if @vehicle.save #happy path
      render :show
    else #sad path
      render json: { errors: @vehicle.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
