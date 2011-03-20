class Motivation < ActiveRecord::Base
  belongs_to :theme
  belongs_to :user
end
