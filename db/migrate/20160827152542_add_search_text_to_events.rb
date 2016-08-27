class AddSearchTextToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :search_text, :text
  end
end
