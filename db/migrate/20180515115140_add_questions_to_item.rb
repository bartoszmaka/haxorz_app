class AddQuestionsToItem < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :subject
      t.integer :score
      t.integer :order_number

      t.references :item, index: true
    end
  end
end

