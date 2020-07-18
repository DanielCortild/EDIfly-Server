class CreateWhitepapers < ActiveRecord::Migration[6.0]
  def change
    create_table :whitepapers do |t|
      t.string :title
      t.string :filename

      t.timestamps
    end
  end
end
