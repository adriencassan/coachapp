class Workout < ApplicationRecord
  belongs_to :profile
  has_many :workoutsets

  def total_weight
    workoutsets.pluck(:total_weight).reduce(:+)
  end

  def program_last_used
    @last_workout = Workout.where(profile: self.profile, program_id: self.id).order(date: :desc)
    @last_workout.first.date unless @last_workout.empty?
  end

  def self.new_duplicate_program(program)
    @workout = Workout.create(name: program.name, is_template: false, date: Date.today, program_id: program.id, profile: program.profile)
    program.workoutsets.each do |programset|
      @workoutset = Workoutset.create(workout: @workout, exercice: programset.exercice)
      programset.repetitions.each do |programrep|
        Repetition.create(workoutset: @workoutset, weight: programrep.weight, quantity: programrep.quantity)
      end
    end
    @workout
  end
end
