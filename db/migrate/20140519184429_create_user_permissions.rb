class CreateUserPermissions < ActiveRecord::Migration
  def change
    create_table :user_permissions do |t|
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
