class WorkoutsController < ApplicationController

  def index
    @profile = Profile.find(params[:profile_id])
  #@programs = Workout.where(profile: @profile, is_program: true).order(:name)
    @workouts = Workout.where(profile: @profile, is_program: false).order(date: :desc)
  end

  def programs
    @profile = Profile.find(params[:profile_id])
    @programs = Workout.where(profile: @profile, is_program: true).order(:name)
  end

  def create_by_program
    @program = Workout.find(params[:id])
    @workout = Workout.new_duplicate_program(@program)
    @workout.save!
    redirect_to workout_path(@workout)
  end

  def show
    @workout = Workout.find(params[:id])
    @new_workoutset = Workoutset.new()
    @exercices = Exercice.all.order(:name) - @workout.workoutsets.pluck(:exercice_id)
  end

   def program
    @program = Workout.find(params[:id])
    @new_workoutset = Workoutset.new()
    @exercices = Exercice.all.order(:name) -  @program.workoutsets.pluck(:exercice_id)
  end
end
