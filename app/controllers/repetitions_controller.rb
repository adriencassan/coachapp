class RepetitionsController < ApplicationController

  def update
    @repetition = Repetition.find(params[:id])
    @repetition.update(repetition_params)
    @repetition.workoutset.totalize
    redirect_to workoutset_path(@repetition.workoutset)
  end

  private

  def repetition_params
    params.require(:repetition).permit(:is_complete, :quantity, :weight)
  end
end
