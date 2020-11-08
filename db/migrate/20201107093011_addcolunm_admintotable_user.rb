class AddcolunmAdmintotableUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean
    add_column :comments, :event_id, :integer ,foreign_key: true
  end
end
