require "spec_helper"

describe BinaryBuddy do
  it { should validate_presence_of(:name) }

  describe "before save" do
    before(:each) do
      @buddy = BinaryBuddy.create(name: "Buddy")
    end

    it "has a food level of 10" do
      expect(@buddy.food_level).to eq 10
    end

    it "has a sleep level of 10" do
      expect(@buddy.sleep_level).to eq 10
    end

    it "has an activity level of 10" do
      expect(@buddy.food_level).to eq 10
    end
  end
end
