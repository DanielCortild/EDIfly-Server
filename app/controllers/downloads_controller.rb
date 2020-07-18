class DownloadsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @whitepapers = Whitepaper.all
    @faqs = Faq.all

    respond_to do |format|
      format.html
      format.json {render json: {
        whitepapers: @whitepapers.map {|whitepaper|{
          title: whitepaper.title,
          filename: whitepaper.filename,
          file_url: whitepaper.file.attached? ? url_for(whitepaper.file) : ''
        }},
        faqs: @faqs.map {|faq|{
          title: faq.title,
          filename: faq.filename,
          file_url: faq.file.attached? ? url_for(faq.file) : ''
        }},
      }}
    end
  end

end
