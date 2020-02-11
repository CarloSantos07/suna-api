class Note < ApplicationRecord
  belongs_to :stand_up

  enum kind: { yesterday: 0, today: 1, roadblocks: 2 }

  validates :kind, inclusion: { in: kind.keys }
  validates :body, presence: true
end
