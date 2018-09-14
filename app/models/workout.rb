class Workout < ApplicationRecord
  belongs_to :profile
  has_many :workoutsets

  def total_weight
    workoutsets.pluck(:total_weight).reduce(:+)
  end

  def program_last_used
    Workout.where(profile: self.profile, program_id: self.id).order(date: :desc).first.date
  end
end
