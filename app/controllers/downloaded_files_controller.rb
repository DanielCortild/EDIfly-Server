class DownloadedFilesController < ApplicationController
  before_action :set_downloaded_file, only: [:show, :edit, :update, :destroy]

  # GET /downloaded_files
  # GET /downloaded_files.json
  def index
    @downloaded_files = DownloadedFile.all
  end

  # GET /downloaded_files/1
  # GET /downloaded_files/1.json
  def show
  end

  # GET /downloaded_files/new
  def new
    @downloaded_file = DownloadedFile.new
  end

  # GET /downloaded_files/1/edit
  def edit
  end

  # POST /downloaded_files
  # POST /downloaded_files.json
  def create
    @downloaded_file = DownloadedFile.new(downloaded_file_params)

    respond_to do |format|
      if @downloaded_file.save
        DownloadedFileMailer.with(downloaded_file: @downloaded_file).new_downloaded_file_email.deliver_later

        format.html { redirect_to @downloaded_file, notice: 'Downloaded file was successfully created.' }
        format.json { render :show, status: :created, location: @downloaded_file }
      else
        format.html { render :new }
        format.json { render json: @downloaded_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /downloaded_files/1
  # PATCH/PUT /downloaded_files/1.json
  def update
    respond_to do |format|
      if @downloaded_file.update(downloaded_file_params)
        format.html { redirect_to @downloaded_file, notice: 'Downloaded file was successfully updated.' }
        format.json { render :show, status: :ok, location: @downloaded_file }
      else
        format.html { render :edit }
        format.json { render json: @downloaded_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /downloaded_files/1
  # DELETE /downloaded_files/1.json
  def destroy
    @downloaded_file.destroy
    respond_to do |format|
      format.html { redirect_to downloaded_files_url, notice: 'Downloaded file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_downloaded_file
      @downloaded_file = DownloadedFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def downloaded_file_params
      params.require(:downloaded_file).permit(:name, :company, :email, :file)
    end
end
