class StandUp < ApplicationRecord
belongs_to :team
has_many :notes, class_name: "note", foreign_key: "reference_id"
# has_many :notes, through: :team

# put validations here
before_validation :set_uuid, on: :create
validates :id, presence: true, length: { maximum: 36 }, uuid: true

  def set_uuid
    self.id = SecureRandom.uuid
  end

validates :date, presence: true
validates :scrum_master, presence: true
validates :team, presence: true

end