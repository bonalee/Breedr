class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :breed
  has_many :images
  has_many :matches
  has_many :pets, through: :matches
  has_many :inverse_pets, through: :matches
end
