class PackageCollection < ApplicationRecord
  has_many :groups, as: :owner, dependent: :destroy
  has_many :packages, through: :groups, source: :item, source_type: "Package"
end
