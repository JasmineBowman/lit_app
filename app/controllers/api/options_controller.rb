class Api::OptionsController < ApplicationController
before_action :authenticate_user, except: [:index, :show]

  def index
    @options = Option.all
    render "index.json.jb"
  end

  def create
    @option = Option.new(
      title: params[:title],
      description: params[:description],
      industry: params[:industry],
      email: params[:email],
      phone: params[:phone],
      user_id: current_user.id
    )
    if @option.save
      render "show.json.jb"
    else
      render json: {errors: @option.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @option = Option.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @option = Option.find_by(id: params[:id])
    @option.title = params[:title] || @option.title
    @option.description = params[:description] || @option.description
    if @option.save
      render "show.json.jb"
    else
      render json: {errors: @option.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    @option = Option.find_by(id: params[:id])
    @option.destroy
    render json: {message: "Option successfully destroyed!"}
  end
end



