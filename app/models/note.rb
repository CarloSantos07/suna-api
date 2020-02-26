class Note < ApplicationRecord
  belongs_to :stand_up, class_name: "StandUp", foreign_key: "stand_up_id"
  enum kind: { yesterday: 0, today: 1, roadblocks: 2 }

  validates :kind, inclusion: { in: (kinds.keys) }
  validates :body, presence: true
end
