class MembershipService

  def self.add_user_to_team(u_id,t_id)
    return create_membership(u_id, t_id, true)  
  end

  def self.remove_user_from_team(u_id,t_id)
    m = Membership.where(user_id: u_id, team_id: t_id).first
    if m
      m.destroy
    end
  end
  
  def self.invite_user_to_team(u_id, t_id)
    return create_membership(u_id, t_id, false)
  end
  
  def self.user_member_of_team?(u_id, t_id)
    return Membership.where(user_id: u_id, team_id: t_id, accepted: true).any?
  end
  
  private
    def self.create_membership(u_id, t_id, status)
      u = User.where(id: u_id).first
      t = Team.where(id: t_id).first
      if u and t and Membership.where(user_id: u_id, team_id: t_id).empty?
        return Membership.create(user_id: u_id, team_id: t_id, accepted: status)
      end
      return nil
    end

end
