class User < Omnisocial::User
  has_many :themes
  has_many :motivations
end
