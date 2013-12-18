module Contexts
  class Hit
    MissingHero  = Class.new(StandardError)
    MissingEnemy = Class.new(StandardError)

    attr_reader :hero, :enemy

    def self.build(options = {})
      hero = options.fetch(:hero) do
        raise MissingHero
      end

      enemy = options.fetch(:enemy) do
        raise MissingEnemy
      end

      new(hero, enemy)
    end

    def initialize(hero, enemy)
      @hero = hero
      @enemy = enemy
    end

  end
end