class WhitepapersController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_whitepaper, only: [:show, :edit, :update, :destroy]

  def index
    @whitepapers = Whitepaper.all
  end

  def show
  end

  def new
    @whitepaper = Whitepaper.new
  end

  def edit
  end

  def create
    @whitepaper = Whitepaper.new(whitepaper_params)

    if @whitepaper.save
      redirect_to @whitepaper, notice: 'Whitepaper was successfully created.'
    else
      render :new
    end
  end

  def update
    if @whitepaper.update(whitepaper_params)
      redirect_to @whitepaper, notice: 'Whitepaper was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @whitepaper.destroy
    redirect_to downloads_url, notice: 'Whitepaper was successfully destroyed.'
  end

  private
    def set_whitepaper
      @whitepaper = Whitepaper.find(params[:id])
    end

    def whitepaper_params
      params.require(:whitepaper).permit(:title, :filename, :file)
    end
end
