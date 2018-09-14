class ProfilesController < ApplicationController

  def coachee
    @profile = Profile.find(params[:profile_id])
    @results = @profile.results
    @programs = Workout.where(profile: @profile, is_template: true)
    @workouts = Workout.where(profile: @profile, is_template: false).order(date: :desc)
  end
end
