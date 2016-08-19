class AddDateEventToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :date_event, :datetime
  end
end
