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
    @habitsets = Habitset.all
  end


  def update
    @habitset = Habitset.find(params[:id])
    @habitset.update(habitsets_params)
    @habitsets = Habitset.all
    @habitsetdays = Habitset.pluck(:date)
    render "profiles/habitsets"
  end

  private

  def habitsets_params
    params.require(:habitset).permit(:date, :name, :description, :url,:coach_reviewed_at, :coach_id,:coach_review_is_requested,:coach_guidelines, :coach_guidelines_video,:coach_guidelines_videocace)
  end

end
