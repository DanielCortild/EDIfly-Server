class FaqsController < ApplicationController
  before_action :set_faq, only: [:show, :edit, :update, :destroy]

  def index
    @faqs = Faq.all
  end

  def show
  end

  def new
    @faq = Faq.new
    render "downloadable_files/new", :locals => {:file => @faq, :title => "FAQ"}
  end

  def edit
    render "downloadable_files/edit", :locals => {:file => @faq, :title => "FAQ"}
  end

  def create
    @faq = Faq.new(faq_params)

    if @faq.save
        redirect_to @faq, notice: 'Faq was successfully created.'
    else
      render :new
    end
  end

  def update
    @file = Faq.find(params[:id])
    if @faq.update(faq_params)
      redirect_to @faq, notice: 'Faq was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @faq.destroy
    redirect_to downloads_url, notice: 'Faq was successfully destroyed.'
  end

  private
    def set_faq
      @faq = Faq.find(params[:id])
    end

    def faq_params
      params.require(:faq).permit(:title, :filename, :file)
    end
end
