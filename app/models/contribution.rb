class Contribution < ActiveRecord::Base
  belongs_to :story
  belongs_to :user
  has_one :image
  has_one :sentence
end
