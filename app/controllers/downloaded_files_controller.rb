class DownloadedFilesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @downloaded_files = DownloadedFile.all.order(created_at: :desc)
  end

end
