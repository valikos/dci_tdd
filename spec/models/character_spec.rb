require 'spec_helper'

describe Character do
  subject { Character.new }

  [
    :id, :type, :health, :damage, :shield, :level, :experience, :next_level
  ].each do |attr|
    it "respond to #{ attr } attribute" do
      should respond_to(attr)
    end
  end
end