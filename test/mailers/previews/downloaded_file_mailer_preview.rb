# Preview all emails at http://localhost:3000/rails/mailers/downloaded_file_mailer
class DownloadedFileMailerPreview < ActionMailer::Preview
  def new_downloaded_file_email
    # Set up a temporary order for the preview
    downloaded_file = DownloadedFile.new(name: "Joe Smith", company: "EDIfly", email: "example@email.com", file: "faq")

    DownloadedFileMailer.with(downloaded_file: downloaded_file).new_downloaded_file_email
  end
end
