class AddAttachmentsImgReview2ToReview < ActiveRecord::Migration
  def self.up
    add_column :reviews, :img_review2_file_name, :string
    add_column :reviews, :img_review2_content_type, :string
    add_column :reviews, :img_review2_file_size, :integer
    add_column :reviews, :img_review2_updated_at, :datetime
  end

  def self.down
    remove_column :reviews, :img_review2_file_name
    remove_column :reviews, :img_review2_content_type
    remove_column :reviews, :img_review2_file_size
    remove_column :reviews, :img_review2_updated_at
  end
end
