class StoriesController < ApplicationController

  def create
    name = params[:name]
    t_id = params[:id]
    if name.blank?
      redirect_to :back, alert: "Story can't be blank!"
    elsif MembershipService.user_member_of_team?(current_user.id, t_id)
      Story.create(team_id: t_id, name: name)
      redirect_to "/teams/#{t_id}", notice: "New story created!"
    else
    
    end
    
  end

end

