class MembershipsController < ApplicationController

  def index
    @memberships = Membership.all
  end
  
  def invite
    email = params[:email]
    t_id = params[:t_id]
    if email.blank?
      redirect_to :back, alert: "Email cannot be blank!"
    elsif not MembershipService.user_member_of_team?(current_user.id, t_id)
      redirect_to :back, alert: "You must be member of team!"
    else
      u = User.where(email: email).first
      if u and u.id == current_user.id
        redirect_to :back, alert: "You're already in the team!"
      elsif not u
        redirect_to :back, alert: "No user registered with email #{email}."
      elsif MembershipService.user_member_of_team?(u.id, t_id)
        redirect_to :back, alert: "User is already member of team."
      elsif MembershipService.invite_user_to_team(u.id, t_id)
        redirect_to :back, notice: "User has been invited!"
      else
        redirect_to :back, alert: "User has already been invited to team."
      end
    end
  end

end
