class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :memberships, dependent: :destroy
  has_many :teams, -> { where(memberships: {accepted: true}) }, through: :memberships
  has_many :teams_to_join, -> { where(memberships: {accepted: false}) }, through: :memberships, source: :team
  
end
