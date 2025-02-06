class GroupItem < ApplicationRecord
  belongs_to :group
  belongs_to :item, polymorphic: true

  validates :group, presence: true
  validates :item, presence: true
  validates :sequence, presence: true
end
