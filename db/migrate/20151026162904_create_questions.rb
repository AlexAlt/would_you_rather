class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :option_one
      t.string :option_two
      t.integer :points_one, default: 0
      t.integer :points_two, default: 0

      t.timestamps
    end
  end
end
