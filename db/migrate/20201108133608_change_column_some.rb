class ChangeColumnSome < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :content, :text
    change_column :events, :start_date, :datetime
    change_column :events, :end_date, :datetime
  end
end
