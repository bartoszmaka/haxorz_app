class AgendaResource < JSONAPI::Resource
  attribute :occurs_at

  has_many :items
end
