class User < ActiveRecord::Base
  validates_presence_of :username, :presence => true
  validates :username, uniqueness: true
  has_many :contributions
  has_many :stories, through: :contributions
end
