class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.references :user, null: false, foreign_key: true
      t.references :keyboard, null: false, foreign_key: true
      t.string :url
      t.text :description
      t.timestamps
    end
  end
end
