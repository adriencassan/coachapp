class HabitsviewsController < ApplicationController


  def show
    @habitsviews = Workoutset.joins(:workout).where("workouts.type_habit = 'Meal'").order("workouts.date DESC")
  end

end
