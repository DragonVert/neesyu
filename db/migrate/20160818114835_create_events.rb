class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :titre
      t.text :description
      t.integer :prix

      t.timestamps
    end
  end
end
