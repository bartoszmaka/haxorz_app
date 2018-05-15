class AddPresentationLinkToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :presentation_link, :string
  end
end
