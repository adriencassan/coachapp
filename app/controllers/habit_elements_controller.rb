class HabitElementsController < ApplicationController

  def show
    @habit_element = HabitElement.find(params[:id])
    @habit_element_calendar = @habit_element.buildcalendar

    if params[:date].nil?
      @habitsets = Habitset.where(habit_element_id: @habit_element.id).order(:date)
    else
      @habitsets = Habitset.where(habit_element_id: @habit_element.id, date: params[:date]).order(:date)
    end
  end

  def index
    redirect_to habit_element_path(1)
  end

end
