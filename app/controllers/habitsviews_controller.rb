class HabitsviewsController < ApplicationController


  def show
    @habitssample = Workout.order("workouts.date DESC")
    @habitsviews = @habitssample.joins(:workoutsets).all
  end

end
