class AddAttachmentsImgPreview2ToPreview < ActiveRecord::Migration
  def self.up
    add_column :previews, :img_preview2_file_name, :string
    add_column :previews, :img_preview2_content_type, :string
    add_column :previews, :img_preview2_file_size, :integer
    add_column :previews, :img_preview2_updated_at, :datetime
  end

  def self.down
    remove_column :previews, :img_preview2_file_name
    remove_column :previews, :img_preview2_content_type
    remove_column :previews, :img_preview2_file_size
    remove_column :previews, :img_preview2_updated_at
  end
end
