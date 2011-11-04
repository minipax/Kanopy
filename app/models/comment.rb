class Comment < ActiveRecord::Base
  belongs_to :problem
  acts_as_voteable
end
