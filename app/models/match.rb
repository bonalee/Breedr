class Match < ApplicationRecord
  belongs_to :pet
  belongs_to :inverse_pet, class_name: "Pet"
end
