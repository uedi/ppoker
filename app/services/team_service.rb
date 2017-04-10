class TeamService
  
  def self.create_team(name)
    Team.create(name: name)
  end

end
