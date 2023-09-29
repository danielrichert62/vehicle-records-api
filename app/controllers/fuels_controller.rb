class FuelsController < ApplicationController
  def index
    @fuels = Fuel.all
  end

  def create
    @fuel = Fuel.new(
      user_id: current_user.id,
      fill_date: params[:fill_date],
      mileage: params[:mileage],
      cost_per_gallon: params[:cost_per_gallon],
      location: params[:location],
      gallons: params[:gallons],
      vehicle_id: params[:vehicle_id],
    )
    if @fuel.save #happy path
      render :show
    else #sad path
      render json: { errors: @fuel.errors.full_messages }, status: :unprocessable_entity
    end

    def destroy
      fuel = Fuel.find_by(id: params["id"])
      fuel.destroy
      render json: { message: "Fuel record removed" }
    end
  end
end
