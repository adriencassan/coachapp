class Workoutset < ApplicationRecord
  belongs_to :exercice
  belongs_to :workout
  has_many :repetitions

  mount_uploader :video, VideoUploader


end
