class AddTeamIdToStories < ActiveRecord::Migration[5.0]
  def up
    add_column :stories, :team_id, :integer
  end
  
  def down
    remove_column :stories, :team_id
  end
end
