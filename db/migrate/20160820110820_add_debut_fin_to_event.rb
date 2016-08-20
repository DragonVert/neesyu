class AddDebutFinToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :debut, :datetime
    add_column :events, :fin, :datetime
  end
end
