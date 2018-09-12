class WorkoutsetsController < ApplicationController

  def show
    @set = Workoutset.find(params[:id])
    #@graph = Workoutset.joins(:workout).where(workouts: {profile: @set.workout.profile}, exercice: @set.exercice).map { |set| [set.workout.date, set.total_weight]}
    #@graph = Workoutset.joins(:workout).where(workouts: {profile: @set.workout.profile}, exercice: @set.exercice).group("workouts.date").sum(:total_weight)

    @graph = Workoutset.joins(:workout).where(workouts: {profile: @set.workout.profile}, exercice: @set.exercice).order("workouts.date desc").limit(5).map { |set| [set.workout.date.strftime("%m/%d"), set.total_weight]}.reverse
  end

  def update
    @set = Workoutset.find(params[:id])
    @set.update(workouset_params)
    redirect_to workoutset_path(@set)
  end

  private

  def workouset_params
    params.require(:workoutset).permit(:video, :video_cache)
  end

end
