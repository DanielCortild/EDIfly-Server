class AddFileurlToDownloadedFiles < ActiveRecord::Migration[6.0]
  def change
    add_column :downloaded_files, :file_url, :string
  end
end
