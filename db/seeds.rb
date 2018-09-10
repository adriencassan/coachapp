# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# PROFIL
profile_coach = Profile.create(first_name: "Coach", last_name: "Family Name", role: "Coach" )
user_coach = User.create(email: "coach@gmail.com", password: "password", profile: profile_coach)

profile_athlete = Profile.create(first_name: "Adrien", last_name: "Cassan", role: "Athlete")
user_athlete = User.create(email: "adrien.cassan@gmail.com", password: "password", profile: profile_athlete)


# EXERCICE
exercice_bench_press = Exercice.create(name: "Développé-Couché", nameEN: "Bench Press")

# WORKOUT
workout = Workout.create(date: "10/09/2018", profile: profile_athlete, name: "Pectoraux / Dos")
set = Workoutset.create(workout: workout, exercice: exercice_bench_press)

repetition = Repetition.create(workoutset: set, quantity: 10, weight: 70)
repetition = Repetition.create(workoutset: set, quantity: 10, weight: 70)
repetition = Repetition.create(workoutset: set, quantity: 10, weight: 70)




# WORKOUT SERIES

(1...8).to_a.each do |i|
  workout_history = Workout.create(date: "#{i}/09/2018", profile: profile_athlete, name: "Historical data")
  Workoutset.create(workout: workout_history, exercice: exercice_bench_press, total_weight: [100,120,140,150].sample)
end
