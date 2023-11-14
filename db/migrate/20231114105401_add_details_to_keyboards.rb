class AddDetailsToKeyboards < ActiveRecord::Migration[7.0]
  def change
    change_table :keyboards do |t|
      t.string :keyboard_type
      t.string :switches, default: 'MX'
      t.string :layout, default: 'Ortholinear'
      t.boolean :wireless, default: false
      t.boolean :hot_swappable, default: false
      t.boolean :oled_compatible, default: false
      t.boolean :split, default: false
      t.boolean :open_source, default: false
      t.integer :rows, default: 3
      t.integer :columns, default: 5
      t.integer :thumb_keys, default: 2
      t.string :github_repo_link
    end
  end
end
