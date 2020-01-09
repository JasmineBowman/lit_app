class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  belongs_to :option
  belongs_to :discipline

  def options_list
    options.split(", ")
  end

  def disciplines_list
    disciplines.split(", ")
  end
end
