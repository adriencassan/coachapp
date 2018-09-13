class Workoutset < ApplicationRecord
  belongs_to :exercice
  belongs_to :workout
  has_many :repetitions

  mount_uploader :video, AttachementUploader

  def totalize
    update(total_weight: self.repetitions.sum(:weight), total_repetitions: self.repetitions.sum(:quantity))
  end
end
