require 'rails_helper'

describe User do
  it { should validate_presence_of :username }
  it { should have_many :contributions }
  it { should have_many :stories }
  it { should validate_uniqueness_of :username }
end
