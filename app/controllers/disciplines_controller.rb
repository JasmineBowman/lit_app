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
end
