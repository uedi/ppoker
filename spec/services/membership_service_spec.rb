require 'rails_helper'

RSpec.describe MembershipService, type: :service do

  describe "basic methods" do
    before(:each) do
      @user = FactoryGirl.create(:user)
      @team = FactoryGirl.create(:team)
    end
    it "add_user_to_team(u_id,t_id)" do
      MembershipService.add_user_to_team(@user.id, @team.id)
      expect(Membership.count).to eq(1)
      expect(Membership.first.user_id).to eq(@user.id)
      expect(Membership.first.team_id).to eq(@team.id)
      expect(Membership.first.accepted).to eq(true)
    end
    it "remove_user_from_team(u_id,t_id)" do
      MembershipService.add_user_to_team(@user.id, @team.id)
      expect(Membership.count).to eq(1)
      MembershipService.remove_user_from_team(@user.id, @team.id)
      expect(Membership.count).to eq(0)
    end
    it "invite_user_to_team(u_id, t_id)" do
      MembershipService.invite_user_to_team(@user.id, @team.id)
      expect(Membership.count).to eq(1)
      expect(Membership.first.user_id).to eq(@user.id)
      expect(Membership.first.team_id).to eq(@team.id)
      expect(Membership.first.accepted).to eq(false)
    end
  
  end


end
