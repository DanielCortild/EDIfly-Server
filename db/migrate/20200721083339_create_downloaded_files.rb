class CreateDownloadedFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :downloaded_files do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :file

      t.timestamps
    end
  end
end
