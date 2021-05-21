class ProfilesController < ApplicationController

  def habitsets
    @habitsets = Habitset.where.not(is_model: true)
    @habitsetdays = ["2021-05-21","2021-05-22 "]
  end

  def reviews
    @reviews_requested = Habitset.where(coach_review_is_requested: true)
    @reviews_completed = Habitset.where.not(coach_reviewed_at: nil)
  end

  def programs
    @habitsets = Habitset.where(is_model: true)
  end

end
