class CreatePackageCollections < ActiveRecord::Migration[8.0]
  def change
    create_table :package_collections do |t|
      t.string :name

      t.timestamps
    end
  end
end
