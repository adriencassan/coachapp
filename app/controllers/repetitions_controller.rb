class RepetitionsController < ApplicationController



  def new
    @workoutset = Workoutset.find(params[:workoutset_id])
    @repetition = Repetition.new(workoutset: @workoutset, quantity: @workoutset.repetitions.empty? ? 0 : @workoutset.repetitions.last.quantity, weight: @workoutset.repetitions.empty? ? 0 : @workoutset.repetitions.last.weight, is_complete: false )
    @repetition.save!
    redirect_to workoutset_path(@repetition.workoutset)
  end

  def update
    @repetition = Repetition.find(params[:id])
    @repetition.update(repetition_params)
    @repetition.workoutset.totalize
    redirect_to workoutset_path(@repetition.workoutset)
  end

  def destroy
    @workoutset = Workoutset.find(params[:workoutset_id])
    @repetition = Repetition.find(params[:id])
    @repetition.destroy!
    redirect_to workoutset_path(@repetition.workoutset)
  end


  private

  def repetition_params
    params.require(:repetition).permit(:is_complete, :quantity, :weight)
  end
end
