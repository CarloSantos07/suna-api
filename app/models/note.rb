class Note < ApplicationRecord
  # belongs_to :team
  belongs_to :stand_up

  # create validations here
  validates :employee, presence: true
  validates :type, presence :true
  validates :body, presence :true
  validates :stand_up, presence :true, length: { maximum: 36 }, uuid: true
end