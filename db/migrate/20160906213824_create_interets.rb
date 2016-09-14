class CreateInterets < ActiveRecord::Migration[5.0]
  def change
    create_table :interets do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end