class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :concert, index: true
      t.text :description
      t.string :user

      t.timestamps null: false
    end
  end
end
