class DownloadedFileMailer < ApplicationMailer
  def new_downloaded_file_email
    @downloaded_file = params[:downloaded_file]

    mail(to: 'edifly.receiver@gmail.com', subject: "You got a new download!")
  end
end
