class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render 'index.json.jb'
  end

  def show
    @user = User.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      address: params[:address],
      city: params[:city],
      zip: params[:zip],
      high_school: params[:high_shool],
      grade_level: params[:grade_level],
      age: params[:age],
      email: params[:email],
      phone: params[:phone],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      render json: { message: "User Created"}, status: :created
    else
      render json: {errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      address: params[:address],
      city: params[:city],
      zip: params[:zip],
      high_school: params[:high_shool],
      grade_level: params[:grade_level],
      age: params[:age],
      email: params[:email],
      phone: params[:phone]
    )
    if @user.save
      render 'show.json.jb'
    else
      render json: {errors: @user.errors.full_message}, status: unprocessable_entity
    end
  end

  def destroy
    @user = User.find_by(id:params[:id])
    render 'destroy.json.jb'
  end
end
