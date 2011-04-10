class Theme < ActiveRecord::Base
  belongs_to :user
  has_many :motivations
  validates :user_id, :presence => true
  validates :title, :presence => true, :length => {:maximum => 32}
end
