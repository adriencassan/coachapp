class WorkoutsetsController < ApplicationController

  def show
    @set = Workoutset.find(params[:id])
    #@graph = Workoutset.joins(:workout).where(workouts: {profile: @set.workout.profile}, exercice: @set.exercice).map { |set| [set.workout.date, set.total_weight]}
    #@graph = Workoutset.joins(:workout).where(workouts: {profile: @set.workout.profile}, exercice: @set.exercice).group("workouts.date").sum(:total_weight)

    @graph = Workoutset.joins(:workout).where(workouts: {profile: @set.workout.profile}, exercice: @set.exercice).where.not(total_weight: 0).order("workouts.date desc").limit(10).map { |set| [set.workout.date.strftime("%d/%m"), set.total_weight]}.reverse
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @workoutset = Workoutset.new(exercice_id: workoutset_params[:exercice].to_i, workout: @workout)
    @workoutset.save!
    @workoutset.initiate_reps_by_copy!
    redirect_to workout_path(@workout)
  end

  def create_programset
    @workout = Workout.find(params[:id])
    @profile = Profile.find(params[:profile_id])
    @workoutset = Workoutset.new(exercice_id: workoutset_params[:exercice].to_i, workout: @workout)
    @workoutset.save!
    redirect_to profile_program_path(@profile,@workout)
  end

  def update
    @set = Workoutset.find(params[:id])
    @set.update(workoutset_params)
    redirect_to workoutset_path(@set)
  end

  def destroy
    @workoutset = Workoutset.find(params[:id])
    @workout = @workoutset.workout
    @workoutset.destroy
    redirect_to workout_path(@workout)
  end


  private

  def workoutset_params
    params.require(:workoutset).permit(:exercice,:video)
  end

end
