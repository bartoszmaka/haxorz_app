class QuestionResource < JSONAPI::Resource
  attributes :subject, :score, :order_number

  has_one :item

  filter :item
end
