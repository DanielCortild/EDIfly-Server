class CreateProductbriefings < ActiveRecord::Migration[6.0]
  def change
    create_table :productbriefings do |t|
      t.string :title
      t.string :filename

      t.timestamps
    end
  end
end
