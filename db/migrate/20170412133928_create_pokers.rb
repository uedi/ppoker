class CreatePokers < ActiveRecord::Migration[5.0]
  def up
    create_table :pokers do |t|
      t.integer :story_id
      t.date :deadline
      t.string :cards, array: true, default: [], null: false
      t.timestamps
    end
  end
  def down
    drop_table :pokers
  end
end
