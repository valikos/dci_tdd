require 'spec_helper'

describe Roles::CureAlly do
  let(:hero) { Character.new }
  let(:ally) { Character.new health: 1 }

  it 'cure ally unit' do
    hero.extend Roles::CureAlly
    hero.cure ally
    ally.health.should eq 6
  end
end