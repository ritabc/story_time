class Story < ActiveRecord::Base
  validates :title, :presence => true
  has_many :contributions
  has_many :users, through :contributions
end
