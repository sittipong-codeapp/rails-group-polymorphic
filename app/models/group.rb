class Group < ApplicationRecord
  belongs_to :owner, polymorphic: true
  belongs_to :item, polymorphic: true

  validates :owner, presence: true
  validates :item, presence: true
end
