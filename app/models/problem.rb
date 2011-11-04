class Problem < ActiveRecord::Base
  belongs_to :citizen
  belongs_to :kanopy
  has_many :comments, :dependent => :destroy
  acts_as_voteable
end
