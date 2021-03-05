class Task < ApplicationRecord
  #validations
  validates :title, presence: true
  validates :description, presence: true
  validates :description, length: { maximum: 80}
  #relations
  belongs_to :user
  #before_save
  #after_update 
end


