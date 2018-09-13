class ResultsController < ApplicationController

  def index
    @profile = Profile.find(params[:profile_id])
    @results = Result.where(profile: @profile)
    @new_result = Result.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @result = Result.new(result_params)
    @result.profile = @profile
    @result.save!
    redirect_to profile_results_path(@profile)
  end

  private

  def result_params
    params.require(:result).permit(:date, :weight, :fatmass, :selfie)
  end
end
