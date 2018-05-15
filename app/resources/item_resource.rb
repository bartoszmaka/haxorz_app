class AgendaResource < JSONAPI::Resource
  attributes :topic, :description, :workshop, :duration, :presentation_link, :record_link
end
