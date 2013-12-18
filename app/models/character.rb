class Character
  include Virtus.model

  attribute :id,         Integer
  attribute :type,       String,  default: :Guest
  attribute :health,     Integer, default: 10
  attribute :damage,     Integer, default: 1
  attribute :shield,     Integer, default: 0
  attribute :level,      Integer, default: 1
  attribute :experience, Integer, default: 0
  attribute :next_level, Integer, default: 10
end