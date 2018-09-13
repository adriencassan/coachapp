class Workoutset < ApplicationRecord
  belongs_to :exercice
  belongs_to :workout
  has_many :repetitions

  mount_uploader :video, AttachementUploader

  def totalize
    update(total_weight: self.repetitions.where(is_complete: true).sum(:weight), total_repetitions: self.repetitions.where(is_complete: true).sum(:quantity))
  end

  def total_weight_last
    Workoutset.joins(:workout).where("workoutsets.exercice_id= #{self.exercice.id} AND workouts.profile_id=#{self.workout.profile.id}").order("workouts.date desc")[2].total_weight
  end

  def repetitions_complete
    repetitions.where(is_complete: :true).count
  end

  def repetitions_total
    repetitions.count
  end
end
