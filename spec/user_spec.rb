require "spec_helper"

describe User do
  it { should have_many :binary_buddies }
end
