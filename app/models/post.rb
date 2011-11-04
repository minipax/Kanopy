class Post < ActiveRecord::Base
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  validates :citizen_id, :presence => true

  belongs_to :citizen
  belongs_to :post_type
  acts_as_voteable
end
