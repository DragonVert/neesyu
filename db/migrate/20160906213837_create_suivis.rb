class CreateSuivis < ActiveRecord::Migration[5.0]
  def change
    create_table :suivis do |t|
      t.references :user, foreign_key: true
      t.references :profil, foreign_key: true

      t.timestamps
    end
  end
end
