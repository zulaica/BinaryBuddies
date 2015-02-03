require "spec_helper"

describe BinaryBuddy do
  it { should validate_presence_of(:name) }

  describe "before save" do
    before(:each) do
      @buddy = BinaryBuddy.create(name: "Buddy")
    end

    it "has an initial food level of 10" do
      expect(@buddy.food_level).to eq 10
    end

    it "has an initial sleep level of 10" do
      expect(@buddy.sleep_level).to eq 10
    end

    it "has an initial activity level of 10" do
      expect(@buddy.food_level).to eq 10
    end
  end
end
