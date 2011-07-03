class AddAuthorToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :author_name, :string
  end

  def self.down
    remove_column :recipes, :author_name
  end
end
