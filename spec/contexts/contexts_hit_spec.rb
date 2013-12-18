require 'spec_helper'

describe Contexts::Hit do
  describe '.build' do
    let(:context) { Contexts::Hit }

    it 'raise error without hero' do
      expect do
        context.build(enemy: double)
      end.to raise_error Contexts::Hit::MissingHero
    end

    it 'raise error witout enemy' do
      expect do
        context.build(hero: double)
      end.to raise_error Contexts::Hit::MissingEnemy
    end
  end

  let(:context) { Contexts::Hit.build(hero: double, enemy: double) }

  it 'respond to hero' do
    context.should respond_to :hero
  end

  it 'respond to enemy' do
    context.should respond_to :enemy
  end
end