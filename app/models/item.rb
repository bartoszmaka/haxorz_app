class Item < ApplicationRecord
  belongs_to :user
  belongs_to :agenda, optional: true
end
