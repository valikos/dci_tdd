module Roles
  module HitEnemy
    def hit(enemy)
      enemy.health -= damage
    end
  end
end