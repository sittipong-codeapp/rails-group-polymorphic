class Package < ApplicationRecord
  has_many :group_items, as: :item, dependent: :destroy
  has_many :groups, through: :group_items
  has_many :package_collections, through: :groups, source: :owner, source_type: "PackageCollection"
end
