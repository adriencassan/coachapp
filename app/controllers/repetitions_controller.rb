class RepetitionsController < ApplicationController



  def new
    @workoutset = Workoutset.find(params[:workoutset_id])
    @profile = @workoutset.workout.profile
    @repetition = Repetition.new(workoutset: @workoutset, quantity: @workoutset.repetitions.empty? ? 0 : @workoutset.repetitions.last.quantity, weight: @workoutset.repetitions.empty? ? 0 : @workoutset.repetitions.last.weight, is_complete: false )
    @repetition.save!

    if params[:mode] == "program"
      redirect_to profile_program_path(@profile, @workoutset.workout, params: {show: @workoutset.id})
    else
      redirect_to workoutset_path(@repetition.workoutset)
    end
  end

  def update
    @repetition = Repetition.find(params[:id])
    @profile =  @repetition.workoutset.workout.profile
    @repetition.update(repetition_params)
    @repetition.workoutset.totalize
    if params[:mode] == "program"
      redirect_to profile_program_path(@profile, @repetition.workoutset.workout)
    else
      redirect_to workoutset_path(@repetition.workoutset)
    end
  end



  def destroy
    @repetition = Repetition.find(params[:id])
    @workoutset = @repetition.workoutset
    @profile =  @workoutset.workout.profile
    @repetition.destroy!
    if params[:mode] == "program"
      redirect_to profile_program_path(@profile,@workoutset)
    else
      redirect_to workoutset_path(@workoutset)
    end
  end


  private

  def repetition_params
    params.require(:repetition).permit(:is_complete, :quantity, :weight)
  end
end
