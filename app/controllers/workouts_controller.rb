class WorkoutsController < ApplicationController

  def index
    @profile = Profile.find(params[:profile_id])
    @programs = Workout.where(profile: @profile, is_template: true).order(:name)
    @workouts = Workout.where(profile: @profile, is_template: false).order(date: :desc)
  end

  def show
    @workout = Workout.find(params[:id])
    @new_workoutset = Workoutset.new()
    @exercices = Exercice.all - @workout.workoutsets.pluck(:exercice_id)
  end

   def program
    @program = Workout.find(params[:id])
    @new_workoutset = Workoutset.new()
    @exercices = Exercice.all -  @program.workoutsets.pluck(:exercice_id)
  end
end
