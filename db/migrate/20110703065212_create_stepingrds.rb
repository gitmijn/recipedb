class CreateStepingrds < ActiveRecord::Migration
  def self.up
    create_table :stepingrds do |t|
      t.integer :recipe_id
      t.integer :step_id
      t.integer :ingredient_id
      t.float :amount
      t.text :unit

      t.timestamps
    end
  end

  def self.down
    drop_table :stepingrds
  end
end
