class ExercicesController < ApplicationController
  def new
    @exercice = Exercice.new
  end

  def create
    @exercice = Exercice.new(exercice_params)
    @exercice.save
    @exercice = Exercice.new
    redirect_to  exercices_path
  end

  def index
     @exercices = Exercice.all.order(:nameEN)
     @exercice = Exercice.new
     @exercice = Exercice.find(params[:id]) unless params[:id].nil?
  end


  def update
    @exercice = Exercice.find(params[:id]).update(exercice_params)
    redirect_to profile_exercices_path(current_user.profile_id,@exercice)
  end

  private

  def exercice_params
    params.require(:exercice).permit(:name, :nameEN, :description, :video)
  end
end
