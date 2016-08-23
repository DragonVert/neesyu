class RemoveFacilitateurFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :facilitateur, :string
  end
end
