class ExercicereviewsController < ApplicationController

  def show
    @exercice = Exercice.find(params[:id])
    @exercicereviews = Workoutset.joins(:workout).where(exercice_id: @exercice).where("workouts.profile_id =  #{current_user.profile.id}").order("workouts.date DESC")
  end

  def update
    @workoutset = Workoutset.find(params[:id])
    @workoutset.update(workoutset_params)
    redirect_to profile_exercicereviews_path(current_user.profile.id,@workoutset.exercice_id)
  end

  private

  def workoutset_params
    params.require(:workoutset).permit(:exercice,:video, :feedback,:rating_performance,:rating_execution)
  end

end
