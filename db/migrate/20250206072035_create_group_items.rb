class CreateGroupItems < ActiveRecord::Migration[8.0]
  def change
    create_table :group_items do |t|
      t.references :group, null: false, foreign_key: true
      t.references :item, polymorphic: true, null: false
      t.integer :sequence

      t.timestamps
    end
  end
end
