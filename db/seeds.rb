# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create Packages
package_a = Package.create(name: 'Package_A')
package_b = Package.create(name: 'Package_B')
package_c = Package.create(name: 'Package_C')

# Create PackageCollections
collection_x = PackageCollection.create(name: 'PackageCollection_X')
collection_y = PackageCollection.create(name: 'PackageCollection_Y')
collection_z = PackageCollection.create(name: 'PackageCollection_Z')

# Associate Packages with PackageCollections
Group.create(owner: collection_x, item: package_a)
Group.create(owner: collection_x, item: package_b)

Group.create(owner: collection_y, item: package_b)
Group.create(owner: collection_y, item: package_c)

Group.create(owner: collection_z, item: package_a)
Group.create(owner: collection_z, item: package_b)
Group.create(owner: collection_z, item: package_c)
