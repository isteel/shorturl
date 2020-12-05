class CreateShorturls < ActiveRecord::Migration[6.0]
  def change
    create_table :shorturls do |t|
      t.references :user, null: false, foreign_key: true
      t.string :shorturl, null: false, limit: 50
      t.string :targeturl, null: false
      t.integer :invocation_count, null: false, default: 0
      t.timestamps
    end
  end
end
