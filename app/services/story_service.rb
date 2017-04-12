class StoryService

  # TODO
  def self.poker_can_be_started?(s_id)
    return Story.find(s_id).pokers.empty?
  end
  
  def self.story_belongs_to_team(s_id, t_id)
    return Story.where(id: s_id, team_id: t_id).any?
  end

end
