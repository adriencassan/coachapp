class ProfilesController < ApplicationController


  def coachees
    @coachees = Profile.where(role: "Athlete").order(:first_name)
  end

  def coachee
    @profile = Profile.find(params[:profile_id])
    @results = @profile.results
    @results_graph = @results.order(date: :desc).limit(5).map { |result| [result.date.strftime("%d/%m"), result.weight]}.reverse
    @programs = Workout.where(profile: @profile, is_program: true)
    @workouts = Workout.where(profile: @profile, is_program: false).order(date: :desc).paginate(page: params[:page], per_page: 5)
  end

  def export
    respond_to do |format|
      format.csv { send_data Exercice.to_csv, filename: "exercices-#{Date.today}.csv" }
    end
  end
end
