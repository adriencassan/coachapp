class HabitsetsController < ApplicationController

  def show
    @habitset = Habitset.find(params[:id])
  end

  def edit
    @habitset = Habitset.find(params[:id])
  end


  def new
  end

  def index
    @habitsetmodels = Habitset.where(is_model: true).all
    @habitsets = Habitset.where(is_model: false).all
  end

  def create
  end

  def update
  end

  def update_feedback
  end

  def destroy
  end

  def feedbacks
    if current_user.profile.role == "Coach"
      @feedbacks_requested = Workoutset.joins(:workout).where.not(coach_id: nil).where(reviewed_at: nil).order("workouts.date DESC")
      @feedbacks_completed = Workoutset.joins(:workout).where.not(coach_id: nil, reviewed_at: nil).order("workouts.date DESC")
    else
      @feedbacks = Workoutset.joins(:workout).where.not(video: nil).where("workouts.profile_id =  #{current_user.profile.id}").order("workouts.date DESC")
    end
  end

  private

  def workoutset_params
    params.require(:workoutset).permit(:exercice,:video, :feedback,:rating_performance,:rating_execution, :coach_id)
  end

end
