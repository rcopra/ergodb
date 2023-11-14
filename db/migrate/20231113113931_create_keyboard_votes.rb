class CreateKeyboardVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :keyboard_votes do |t|
      t.references :keyboard, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :vote_type
      t.timestamps
    end
  end
end
