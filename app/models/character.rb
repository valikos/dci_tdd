class Character
  include Virtus.model

  attribute :id,   Integer
  attribute :type, String
  attribute :health, Integer
  attribute :damage, Integer
  attribute :protection, Integer
end