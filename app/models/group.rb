class Group < ApplicationRecord
  belongs_to :owner, polymorphic: true

  has_many :group_items, dependent: :destroy
  has_many :items, through: :group_items, source: :item, source_type: "Item"
end
