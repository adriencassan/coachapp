class ProfilesController < ApplicationController

  def habitsets
    @habitsets = Habitset.where(is_active: true).order(:date)
  end

  def coachreviews
    if current_user.profile.role == "Coach"
      @habitsets_requested = Habitset.where(coach_id: current_user.profile).order(:date)
      @habitsets_completed = Habitset.where(coach_id: current_user.profile).order(:date)
    else
      @habitsets_requested = Habitset.where.not(is_model: true).order(:date)
      @habitsets_completed = Habitset.where.not(is_model: true).order(:date)
    end
  end

   def editreview
    @habitsets = Habitset.where.not(is_model: true).order(:date)
  end

end
