class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :matched_pet, class_name: "Pet"
end
