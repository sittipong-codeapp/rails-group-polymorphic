class Package < ApplicationRecord
  has_many :groups, as: :item, dependent: :destroy
  has_many :package_collections, through: :groups, source: :owner, source_type: "PackageCollection"
end
