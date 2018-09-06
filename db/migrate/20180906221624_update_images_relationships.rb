class UpdateImagesRelationships < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :contribution_id, :integer
    add_column :contributions, :inspiration_image, :string
  end
end
