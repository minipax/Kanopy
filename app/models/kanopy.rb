class Kanopy < ActiveRecord::Base
  belongs_to :kanopy
  has_many :problems
end
