class DownloadsController < ApplicationController

  def index
    @product_briefings = ProductBriefing.all
    @whitepapers = Whitepaper.all
    @faqs = Faq.all
  end

end
