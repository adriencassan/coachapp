class WorkoutSetsController < ApplicationController

  def show
    @set = WorkoutSet.find(params[:id])
  end
end
