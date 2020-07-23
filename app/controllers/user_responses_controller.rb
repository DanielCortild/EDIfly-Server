class UserResponsesController < ApplicationController

  def downloaded_files
    @downloaded_files = DownloadedFile.all.order(created_at: :desc)
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=downloads.xlsx"
      }
    end
  end

  def messages
    @messages = Message.all.order(created_at: :desc)
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=messages.xlsx"
      }
    end
  end

end
