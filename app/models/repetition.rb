class Repetition < ApplicationRecord
  belongs_to :workoutset

  after_create :totalize

  private

  def totalize
    self.workoutset.totalize
  end
end
