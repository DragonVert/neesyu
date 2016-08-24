class AddActiviteToProfils < ActiveRecord::Migration[5.0]
  def change
    add_column :profils, :activite, :string
  end
end
