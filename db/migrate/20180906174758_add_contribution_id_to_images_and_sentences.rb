class AddContributionIdToImagesAndSentences < ActiveRecord::Migration[5.2]
  def change
    remove_column :contributions, :image_id, :integer
    remove_column :contributions, :sentence_id, :integer

    add_column :images, :contribution_id, :integer
    add_foreign_key :images, :contributions

    add_column :sentences, :contribution_id, :integer
    add_foreign_key :sentences, :contributions
  end
end
