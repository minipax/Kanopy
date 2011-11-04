class Solution < ActiveRecord::Base
  belongs_to :comment
  acts_as_voteable
end
