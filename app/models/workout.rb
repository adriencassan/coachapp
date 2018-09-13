class Workout < ApplicationRecord
  belongs_to :profile
  has_many :workoutsets

  def total_weight
    workoutsets.pluck(:total_weight).reduce(:+)
  end
end
