require 'spec_helper'

describe Roles::HitEnemy do
  let(:hero) { Character.new damage: 5 }
  let(:enemy) { Character.new health: 100 }

  it 'put damage to the enemy' do
    hero.extend Roles::HitEnemy
    hero.hit enemy
    enemy.health.should eq 95
  end
end