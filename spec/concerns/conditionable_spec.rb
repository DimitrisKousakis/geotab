require "spec_helper"

describe Geotab::Concerns::Conditionable do
  let(:dummy) { Class.new { extend Geotab::Concerns::Conditionable } }
  let(:conditions) { {"c1" => "v1", "c2" => {"c3" => "v3"}} }

  before :each do
    dummy.conditions.merge!(conditions)
  end

  describe ".conditions" do
    it "should be a simple getter" do
      expect(dummy.conditions).to eq(conditions)
    end
  end

  describe ".clear_conditions" do
    it "should set @conditions to an empty hash" do
      expect{ dummy.clear_conditions }.to change{ dummy.conditions  }.to({})
    end
  end
end
