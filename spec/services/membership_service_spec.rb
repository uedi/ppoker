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
    it "user_member_of_team?(u_id, t_id)" do
      @user2 = FactoryGirl.create(:user, email: "t22@tt.tt")
      Membership.create(user_id: @user.id, team_id: @team.id, accepted: true)
      expect(MembershipService.user_member_of_team?(@user2.id, @team.id)).to eq(false)
      expect(MembershipService.user_member_of_team?(@user.id, @team.id)).to eq(true)
      expect(MembershipService.user_member_of_team?(@user2.id + 3, @team.id + 3)).to eq(false)
    end
    it "accept_invitation(u_id, t_id)" do
      expect(MembershipService.accept_invitation(@user.id, @team.id)).to eq(false)
      expect(MembershipService.accept_invitation(@user.id + 3, @team.id + 3)).to eq(false)
      MembershipService.invite_user_to_team(@user.id, @team.id)
      expect(Membership.count).to eq(1)
      expect(MembershipService.accept_invitation(@user.id, @team.id)).to eq(true)
      expect(Membership.first.accepted).to eq(true)
    end
  
  end


end
