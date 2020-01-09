class Api::DisciplinesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    # if current_user
    #   @disciplines = current_user.disciplines
    #   render 'index.json.jb'
    # else
    #   render json: []
    # end
    @disciplines = Discipline.all
    render 'index.json.jb'

    # @disciplines = Discipline.where("title LIKE ?", "%#{params[:search]}%")
    # @disciplines = @disciplines.where("id > 5")
    # @disciplines.order!(:start_date => :asc)
  end

  def show
    the_id = params[:id]
    @discipline = Discipline.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @discipline = Discipline.new(
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      path: params[:path],
      description: params[:description],
      industry: params[:industry],
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



