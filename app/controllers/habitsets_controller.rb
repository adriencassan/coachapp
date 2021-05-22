class HabitsetsController < ApplicationController


  def index
    @habitsets = Habitset.where(is_active: true).order(:date)
  end

  def all
    @habitsets = Habitset.all.order(:date)
    render "index"
  end

  def show
    @habitset = Habitset.find(params[:id])
    render "edit"
  end

  def edit
    @habitset = Habitset.find(params[:id])
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

  def destroy
    @habitset = Habitset.find(params[:id])
    @habitset.destroy!
    redirect_to habitsets_path
  end

  private

  def habitsets_params
    params.require(:habitset).permit(:date, :name, :description, :url, :is_active, :is_model, :habitset_type, :coach_reviewed_at, :coach_id,:coach_review_is_requested, :coach_guidelines_video,:coach_guidelines_video_cache,:coach_review_video,:coach_review_video_cache,:coach_review,:kcal)
  end

end
