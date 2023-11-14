class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :keyboard, null: false, foreign_key: true
      t.datetime :created_at

      t.timestamps
    end
  end
end
