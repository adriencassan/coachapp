class ResultsController < ApplicationController

  def index
    @profile = Profile.find(params[:profile_id])
    @results = Result.where(profile: @profile)
    @new_result = Result.new
  end
end
