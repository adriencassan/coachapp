class Workout < ApplicationRecord
  belongs_to :profile
  has_many :workout_sets
end
