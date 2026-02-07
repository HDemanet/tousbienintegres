class AddPhotoPathToCandidates < ActiveRecord::Migration[7.1]
  def change
    add_column :candidates, :photo_path, :string
  end
end
