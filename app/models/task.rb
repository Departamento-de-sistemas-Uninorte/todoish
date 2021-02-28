class Task < ApplicationRecord
  #validations
  validates :title, presence: true
  validates :description, presence: true
  validates :description, length: { maximum: 80}
  #relations
  #before_save
  #after_update 
end
