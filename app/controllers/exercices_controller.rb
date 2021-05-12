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

  def index
     @exercices = Exercice.all.order(:nameEN)
     @exercice = Exercice.new
     @exercice = Exercice.find(params[:id]) unless params[:id].nil?
  end


  def update
    exercice = Exercice.find(params[:id]).update(exercice_params)
    redirect_to exercices_path
  end

  private

  def exercice_params
    params.require(:exercice).permit(:name, :nameEN, :description, :video)
  end
end
