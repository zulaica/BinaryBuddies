class BinaryBuddy < ActiveRecord::Base
  validates :name, presence: true
  before_save :set_initial_levels

private

  def set_initial_levels
    self.food_level = 10
    self.sleep_level = 10
    self.activity_level = 10
  end

end
