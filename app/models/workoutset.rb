class Workoutset < ApplicationRecord
  belongs_to :exercice
  belongs_to :workout
  has_many :repetitions
end
