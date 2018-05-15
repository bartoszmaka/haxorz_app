class Item < ApplicationRecord
  belongs_to :user
  belongs_to :agenda, optional: true

  def item_type
    workshop ? 'workshop' : 'presentation'
  end
end
