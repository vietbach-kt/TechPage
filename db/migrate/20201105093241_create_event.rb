class CreateEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :content
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
