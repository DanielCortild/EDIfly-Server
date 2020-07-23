class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  # GET /homes
  # GET /homes.json
  def index
    @home = Home.all.first
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
    if @home.update(home_params)
      redirect_to '/', notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end

  private
    def set_home
      @home = Home.find(params[:id])
    end

    def home_params
      params.require(:home).permit(:message)
    end
end
