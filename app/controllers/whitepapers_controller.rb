class WhitepapersController < ApplicationController
  before_action :set_whitepaper, only: [:show, :edit, :update, :destroy]

  def index
    @whitepapers = Whitepaper.all
  end

  def show
  end

  def new
    @whitepaper = Whitepaper.new
    render "downloadable_files/new", :locals => {:file => @whitepaper, :title => "Whitepaper"}
  end

  def edit
    render "downloadable_files/edit", :locals => {:file => @whitepaper, :title => "Whitepaper"}
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
