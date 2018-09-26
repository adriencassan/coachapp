class ProfilesController < ApplicationController


  def coachees
    @coachees = Profile.where(role: "Athlete").order(:first_name)
  end

  def coachee
    @coachee = Profile.find(params[:profile_id])
    @results = @coachee.results
    @results_graph = @results.order(date: :desc).limit(5).map { |result| [result.date.strftime("%d/%m"), result.weight]}.reverse
    @programs = Workout.where(profile: @coachee, is_program: true)
    @workouts = Workout.where(profile: @coachee, is_program: false).order(date: :desc)
  end

  def coachee_results
    @coachee = Profile.find(params[:profile_id])
    @results = @coachee.results
    @results_graph = @results.order(date: :desc).limit(5).map { |result| [result.date.strftime("%d/%m"), result.weight]}.reverse
  end

  def coachee_feedbacks
    @coachee = Profile.find(params[:profile_id])
    @feedbacks = Workoutset.joins(:workout).where.not(video: nil).where("workouts.profile_id =  #{@coachee.id}").order("workouts.date DESC")
  end



  ### TO BE DELETED
  def export
    respond_to do |format|
      format.csv { send_data Exercice.to_csv, filename: "exercices-#{Date.today}.csv" }
    end
  end
end
