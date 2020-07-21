class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @home = Home.all.first

    @users = User.all
    @testimonials = Testimonial.all

    @whitepapers = Whitepaper.all
    @faqs = Faq.all

    render json: {
      message: @home.message,
      users: @users.map {|user| {
        name: user.name,
        desc: user.desc,
        link: user.link,
        img_url: user.img.attached? ? url_for(user.img) : ''
      }},
      testimonials: @testimonials.map {|testimonial| {
        quote: testimonial.testimonial,
        author: testimonial.name,
        from: testimonial.from,
        date: testimonial.date
      }},
      downloads: {
        'Project Briefing': [],
        'Whitepapers': @whitepapers.map {|whitepaper|{
          title: whitepaper.title,
          filename: whitepaper.filename,
          file_url: whitepaper.file.attached? ? url_for(whitepaper.file) : ''
        }},
        'Frequently Asked Questions': @faqs.map {|faq|{
          title: faq.title,
          filename: faq.filename,
          file_url: faq.file.attached? ? url_for(faq.file) : ''
        }},
      }
    }
  end

  def downloaded_file
    @downloaded_file = DownloadedFile.new(downloaded_file_params)

    if @downloaded_file.save
      DownloadedFileMailer.with(downloaded_file: @downloaded_file).new_downloaded_file_email.deliver_later
    end
  end

  private

  def downloaded_file_params
    params.require(:downloaded_file).permit(:name, :company, :email, :file)
  end

end
