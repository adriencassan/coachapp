class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.where(profile: params[:profile_id], is_template: false).order(date: :desc)
  end

  def show
    @workout = Workout.find(params[:id])
    @new_workoutset = Workoutset.new()
    @exercices = Exercice.all - @workout.workoutsets.pluck(:exercice_id)
  end
end
