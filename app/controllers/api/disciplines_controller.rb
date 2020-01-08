class Api::DisciplinesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @disciplines = Discipline.all
    render 'index.json.jb'
  end

  def show
    @discipline = Discipline.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @discipline = Discipline.new(
      title: params[:title],
      description: params[:description],
      industry: params[:industry],
      email: params[:email],
      phone: params[:phone],
      user_id: current_user.id
    )
    if @discipline.save
      render 'show.json.jb'
    else
      render json: {errors: @discipline.errors.full_messages}, status: unprocessable_entity
    end
  end

  def update
    @discipline = Discipline.find_by(id: params[:id])
    @discipline.title = params[:title] 
    @discipline.description = params[:description] 
    if @discipline.save
      render 'show.json.jb'
    else
      render json: {errors: @discipline.errors.full_messages}, status: unprocessable_entity
    end
  end

  def destroy
    @discipline = Discipline.find_by(id: params[:id])
    @discipline.destroy
    render json: {message: "Discipline successfully destroyed!"}
  end
end



