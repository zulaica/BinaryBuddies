require "spec_helper"

describe User do
  it { should have_many :binary_buddies }
  it { should validate_uniqueness_of :name }

  describe "#upcase_user_name" do
    it "upcases the user name" do
      @user = User.create(name: "asdf")
      expect(@user.name).to eq "ASDF"
    end
  end
end
