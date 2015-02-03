class User < ActiveRecord::Base
  has_many :binary_buddies
  validates :name, presence: true
  validates :name, uniqueness: true
  before_create :upcase_user_name

private

  def upcase_user_name
    self.name = self.name.upcase
  end

end
