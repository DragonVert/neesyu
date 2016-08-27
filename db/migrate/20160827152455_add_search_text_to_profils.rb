class AddSearchTextToProfils < ActiveRecord::Migration[5.0]
  def change
    add_column :profils, :search_text, :text
  end
end
