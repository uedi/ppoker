class Team < ApplicationRecord

  has_many :memberships, dependent: :destroy
  has_many :members, -> { where(memberships: {accepted: true}) }, through: :memberships, source: :user

end
