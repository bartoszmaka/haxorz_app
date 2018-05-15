class AddRecordLinkToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :record_link, :string
  end
end
