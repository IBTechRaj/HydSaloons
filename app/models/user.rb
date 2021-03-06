class User < ApplicationRecord
 devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist

  has_many :clients 
  has_many :appointments 
  has_many :saloonspas

  validates :email, presence: true
end
