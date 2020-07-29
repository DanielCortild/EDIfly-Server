class ProductBriefingsController < ApplicationController
  before_action :set_product_briefing, only: [:show, :edit, :update, :destroy]

  # GET /product_briefings
  # GET /product_briefings.json
  def index
    @product_briefings = ProductBriefing.all
  end

  # GET /product_briefings/1
  # GET /product_briefings/1.json
  def show
  end

  # GET /product_briefings/new
  def new
    @product_briefing = ProductBriefing.new
  end

  # GET /product_briefings/1/edit
  def edit
  end

  # POST /product_briefings
  # POST /product_briefings.json
  def create
    @product_briefing = ProductBriefing.new(product_briefing_params)

    respond_to do |format|
      if @product_briefing.save
        format.html { redirect_to @product_briefing, notice: 'Product briefing was successfully created.' }
        format.json { render :show, status: :created, location: @product_briefing }
      else
        format.html { render :new }
        format.json { render json: @product_briefing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_briefings/1
  # PATCH/PUT /product_briefings/1.json
  def update
    respond_to do |format|
      if @product_briefing.update(product_briefing_params)
        format.html { redirect_to @product_briefing, notice: 'Product briefing was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_briefing }
      else
        format.html { render :edit }
        format.json { render json: @product_briefing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_briefings/1
  # DELETE /product_briefings/1.json
  def destroy
    @product_briefing.destroy
    respond_to do |format|
      format.html { redirect_to product_briefings_url, notice: 'Product briefing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_briefing
      @product_briefing = ProductBriefing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_briefing_params
      params.require(:product_briefing).permit(:title, :filename, :file)
    end
end
