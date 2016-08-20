class RemoveHoraireFromEvent < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :horaire, :datetime
  end
end
