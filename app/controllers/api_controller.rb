class ApiController < ApplicationController

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
      }
    }
  end

end
