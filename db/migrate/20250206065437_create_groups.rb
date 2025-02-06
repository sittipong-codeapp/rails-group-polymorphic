class CreateGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :groups do |t|
      t.references :owner, polymorphic: true, null: false

      t.timestamps
    end
  end
end
