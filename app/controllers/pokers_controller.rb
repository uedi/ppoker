class PokersController < ApplicationController

  def new
    t_id = params[:t_id]
    if not MembershipService.user_member_of_team?(current_user.id, t_id)
      redirect_to "/teams/", alert: "You must be member of team to start poker!"
    else
      @team = Team.find(t_id)
      @poker = Poker.new
      render :new
    end    
  end


end
