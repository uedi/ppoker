class MembershipService

  def self.add_user_to_team(u_id,t_id)
    u = User.where(id: u_id).first
    t = Team.where(id: t_id).first
    if u and t and Membership.where(user_id: u_id, team_id: t_id).empty?
      return Membership.create(user_id: u_id, team_id: t_id)
    end
    return nil
  end

  def self.remove_user_from_team(u_id,t_id)
    m = Membership.where(user_id: u_id, team_id: t_id).first
    if m
      m.destroy
    end
  end

end
