class AddReduitToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :reduit, :string
    add_column :events, :contact, :string
    add_column :events, :transport, :string
  end
end
