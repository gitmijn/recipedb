class CreateSteps < ActiveRecord::Migration
  def self.up
    create_table :steps do |t|
      t.integer :recipe_id
      t.text :instruction

      t.timestamps
    end
  end

  def self.down
    drop_table :steps
  end
end
