class AddAutorToReviews < ActiveRecord::Migration
     def self.up
    add_column :reviews, :autor, :string
  end

  def self.down
    remove_column :reviews, :autor
  end
end