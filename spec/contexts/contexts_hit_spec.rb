require 'spec_helper'

describe Contexts::Hit do
  let(:context) { Contexts::Hit.build(hero: double, enemy: double) }

  it 'respond to hero' do
    context.should respond_to :hero
  end

  it 'respond to enemy' do
    context.should respond_to :enemy
  end

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

  describe '#play' do
    let(:hero) { double('hero', hit: true) }
    let(:enemy) { double('enemy', health: 5) }
    let(:context) { Contexts::Hit.build(hero: hero, enemy: enemy) }

    it 'hit' do
      context.play
      expect(hero).to have_received(:hit).with(enemy)
    end
  end
end