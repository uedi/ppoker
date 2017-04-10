class AddAcceptedToMembership < ActiveRecord::Migration[5.0]
  def up
    add_column :memberships, :accepted, :boolean, default: false
    Membership.all.each do |m|
      m.accepted = true
		 	m.save
		end
  end
  def down
    remove_column :memberships, :accepted
  end
end
