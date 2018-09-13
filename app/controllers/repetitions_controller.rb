class RepetitionsController < ApplicationController



  def new
    @workoutset = Workoutset.find(params[:workoutset_id])
    @repetition = Repetition.new(workoutset: @workoutset, quantity: @workoutset.repetitions.last.quantity, weight: @workoutset.repetitions.last.weight, is_complete: false )
    @repetition.save!
    redirect_to workoutset_path(@repetition.workoutset)
  end

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
