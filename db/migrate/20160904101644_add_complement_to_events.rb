class AddComplementToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :complement, :string
  end
end
