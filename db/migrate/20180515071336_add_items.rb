class AddItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :topic
      t.string :description
      t.boolean :workshop
      t.integer :duration
      t.references :user, index: true
      t.references :agenda, index: true, null: true

      t.timestamps
    end
  end
end
