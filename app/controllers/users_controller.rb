class UsersController < ApplicationController
  # def index
  #   @users = User.all
  # end

  # if user.save
  #   render json: { message: "User created successfully" }, status: :created
  # else
  #   render json: { errors: user.errors.full_messages }, status: :bad_request
  # end

  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User deleted successfully" }
  end
end
