class AddLieuToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :lieu, :string
    add_column :events, :adresse, :string
    add_column :events, :cp, :string
    add_column :events, :ville, :string
    add_column :events, :pays, :string
  end
end
