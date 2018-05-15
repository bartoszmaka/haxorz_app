class ItemResource < JSONAPI::Resource
  attributes :topic, :description, :workshop, :duration, :presentation_link, :record_link, :item_type

  has_one :agenda
end
