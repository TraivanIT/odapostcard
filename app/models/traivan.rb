class Traivan < ApplicationRecord

  has_many :post_cards
  
  has_secure_password

  validates :fullname, presence: true
  validates :username, format: { with: /@/, message: 'it is not valide user'}
  validates :password, presence: true
  
end
