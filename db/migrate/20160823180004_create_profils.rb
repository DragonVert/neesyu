class CreateProfils < ActiveRecord::Migration[5.0]
  def change
    create_table :profils do |t|
      t.string :nom
      t.string :prenom
      t.string :pseudo
      t.text :detail
      t.string :site
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
