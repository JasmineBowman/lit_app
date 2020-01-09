class DisciplinesController < ApplicationController

  def show
    @discipline = Discipline.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def index
    @disciplines = Discipline.all
    render 'index.html.erb'
  end

  def new
    @users = User.all
    render 'new.html.erb'
  end

  def create
    @discipline = Discipline.new(
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      path: params[:path],
      description: params[:description],
      industry: params[:industry],
      user_id: params[:user_id]
    )
    @discipline.save
    redirect_to "/disciplines/#{@discipline.id}"
  end

  def edit
    @discipline = Discipline.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @discipline = Discipline.find_by(id: params[:id])
    @discipline.title = params[:title]
    @discipline.start_date = params[:start_date]
    @discipline.end_date = params[:end_date]
    @discipline.path = params[:path]
    @discipline.description = params[:description]
    @discipline.industry = params[:industry]
    @discipline.save
    redirect_to "/disciplines/#{@discipline.id}"
  end
end
