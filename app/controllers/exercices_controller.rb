class ExercicesController < ApplicationController
  def new
    @exercice = Exercice.new
  end

  def create
    @exercice = Exercice.new(exercice_params)
    @exercice.save
    @exercice = Exercice.new
    redirect_to  exercices_new_path
  end

  private

  def exercice_params
    params.require(:exercice).permit(:name, :nameEN)
  end
end
