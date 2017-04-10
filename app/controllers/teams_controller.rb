class TeamsController < ApplicationController
  
  def index
    @teams = Team.all
  end
  
  def show
    if MembershipService.user_member_of_team?(current_user.id, params[:id])
      @team = Team.where(id: params[:id]).first
      render :show
    else
      redirect_to '/teams', alert: "You can only check your own teams!"
    end
  end
    
  def create
    name = params[:name]
    if name.blank? or not TeamService.create_team(current_user.id, name)
      redirect_to '/', alert: "Name cannot be blank!"
    else
      redirect_to '/', notice: "New team created!"
    end
  end

end
