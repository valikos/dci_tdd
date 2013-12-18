require 'spec_helper'

describe Cavalier do
  subject { Cavalier.new }

  it 'inherits fron Character'do
    Cavalier.superclass.should eq Character
  end
end