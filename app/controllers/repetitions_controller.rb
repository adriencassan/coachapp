class RepetitionsController < ApplicationController

  def update
    @repetition = Repetition.find(params[:id])
    @repetition.update(repetition_params)
  end

  private

  def repetition_param
    params.require(:repetition).permit(:is_complete)
  end
end
