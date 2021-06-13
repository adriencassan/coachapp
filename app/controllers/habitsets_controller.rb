class HabitsetsController < ApplicationController


  def index
    @habitsetdays = Habitset.where.not(date: nil).order(date: :desc).distinct.pluck(:date)
    @habitsets_favorites = Habitset.where(is_favorite: true, is_completed: false).order(:date)
    @habitsets_inbox = Habitset.where(is_completed: false, is_favorite: false, date: nil).order(:date)
    @habitsets = Habitset.all.order(:date)
  end

  def coachreviews
    if current_user.profile.role == "Coach"
      @habitsets = Habitset.where(coach_id: current_user.profile.id).order(:date)
    else
      @habitsets = Habitset.where(coachee_id: current_user.profile.id).order(:date)
    end
  end

  def show
    @habitset = Habitset.find(params[:id])
    render "edit"
  end

  def edit
    @habitset = Habitset.find(params[:id])
    @habitset.habitset_lines.build
  end

  def new
    @habitset = Habitset.new
    render "edit"
  end

  def create
    @habitset = Habitset.create(habitsets_params)
    redirect_to habitset_path(@habitset)
  end

  def update
    @habitset = Habitset.find(params[:id])
    @habitset.update(habitsets_params)
    redirect_to habitsets_path
  end

   def copy
    @habitset = Habitset.find(params[:id])
    @habitset_new = @habitset.dup
    @habitset_new.save!
    redirect_to edit_habitset_path( @habitset_new )
  end

  def destroy
    @habitset = Habitset.find(params[:id])
    @habitset.destroy!
    redirect_to habitsets_path
  end

   def destroydate
    @habitset = Habitset.find(params[:id])
    @habitset.date = nil
    @habitset.save!
    redirect_to habitsets_path
  end

  def destroystartdate
    @habitset = Habitset.find(params[:id])
    @habitset.started_at = nil
    @habitset.save!
    redirect_to habitsets_path
  end

   def destroyreviewedat
    @habitset = Habitset.find(params[:id])
    @habitset.coach_reviewed_at = nil
    @habitset.save!
    redirect_to habitsets_path
  end

  private

  def habitsets_params
    params.require(:habitset).permit(:date, :started_at, :name, :description, :url,  :is_active, :is_model, :is_completed, :is_favorite, :habitset_type, :coach_reviewed_at, :coach_id,:coachee_id,:coach_review_is_requested, :coach_guidelines_video,:coach_guidelines_video_cache,:coach_review_video,:coach_review_video_cache,:coach_review,:kcal, :he_kcal, :he_protein, :he_carb, :he_fat, :coach_review_performance, :coach_review_execution, :fit_workouttime, :fit_quantity, :fit_weight, :fit_is_max, :photo_cache, :photo, :result_weight, :result_fatmass_pct, :result_photo, :status, :habit_element_id, :habitset_parent_id,  habitset_lines_attributes: [:id, :quantity, :weight, :_destroy] )
  end

end
