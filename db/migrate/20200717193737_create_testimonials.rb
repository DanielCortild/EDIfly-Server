class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :from
      t.text :testimonial
      t.string :date

      t.timestamps
    end
  end
end
