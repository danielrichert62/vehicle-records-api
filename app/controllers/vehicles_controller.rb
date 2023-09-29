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

  def update
    @vehicle = Vehicle.find_by(id: params[:id])
    @vehicle.update(
      # user_id: params[:vehicle]["user_id"] || @vehicle.user_id,
      make: params["make"] || @vehicle.make,
      model: params["model"] || @vehicle.model,
      year: params["year"] || @vehicle.year,
      image_url: params["image_url"] || @vehicle.image_url,
    )
    # redirect_to "/vehicles"
    render :show
  end

  def destroy
    vehicle = Vehicle.find_by(id: params["id"])
    vehicle.destroy
    render json: { message: "Vehicle removed" }
  end
end
