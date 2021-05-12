class ExercicereviewsController < ApplicationController

  def show
    @exercice = Exercice.find(params[:id])
    @exercicereviews = Workoutset.joins(:workout).where(exercice_id: @exercice).where.not(video: nil).where("workouts.profile_id =  #{current_user.profile.id}").order("workouts.date DESC")
  end

end
