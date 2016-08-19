class AddHoraireToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :horaire, :datetime
  end
end
