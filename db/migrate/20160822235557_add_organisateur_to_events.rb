class AddOrganisateurToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :facilitateur, :string
  end
end
