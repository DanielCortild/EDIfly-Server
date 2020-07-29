class ProductbriefingsController < ApplicationController
  before_action :set_productbriefing, only: [:show, :edit, :update, :destroy]

  def index
    @productbriefings = Productbriefing.all
  end

  def show
  end

  def new
    @productbriefing = Productbriefing.new
  end

  def edit
  end

  def create
    @productbriefing = Productbriefing.new(productbriefin_params)

    if @productbriefing.save
      redirect_to @productbriefing, notice: 'Product Briefing was successfully created.'
    else
      render :new
    end
  end

  def update
    if @productbriefing.update(productbriefing_params)
      redirect_to @productbriefing, notice: 'Product Briefing was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @productbriefing.destroy
    redirect_to downloads_url, notice: 'Product Briefing was successfully destroyed.'
  end

  private
    def set_productbriefing
      @productbriefing = Productbriefing.find(params[:id])
    end

    def productbriefing_params
      params.require(:productbriefing).permit(:title, :filename, :file)
    end
end
