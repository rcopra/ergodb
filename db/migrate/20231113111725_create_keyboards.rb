class CreateKeyboards < ActiveRecord::Migration[7.0]
  def change
    create_table :keyboards do |t|
      t.string :name
      t.text :description
      t.string :type
      t.string :image_url
      t.references :user, null: false, foreign_key: true
      t.boolean :community_uploaded
      t.timestamps
    end
  end
end
