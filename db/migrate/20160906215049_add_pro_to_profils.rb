class AddProToProfils < ActiveRecord::Migration[5.0]
  def change
    add_column :profils, :pro, :boolean
  end
end
