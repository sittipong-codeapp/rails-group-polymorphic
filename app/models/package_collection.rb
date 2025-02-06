class PackageCollection < ApplicationRecord
  has_one :group, as: :owner, dependent: :destroy
  has_many :group_items, through: :group
  has_many :packages, through: :group_items, source: :item, source_type: "Package"
end
