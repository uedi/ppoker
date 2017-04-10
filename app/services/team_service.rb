class TeamService
  
  def self.create_team(id, name)
    u = User.where(id: id).first
    t = Team.create(name: name)
    Membership.create(user_id: u.id, team_id: t.id, accepted: true)
    return t
  end

end
