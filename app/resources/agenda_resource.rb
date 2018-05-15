class AgendaResource < JSONAPI::Resource
  attributes :occurs_at

  has_many :items
end
