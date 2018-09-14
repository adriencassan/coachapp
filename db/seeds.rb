# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# PROFIL
profile_coach = Profile.create(first_name: "Coach", last_name: "Family Name", role: "Coach" )
user_coach = User.create(email: "coach@gmail.com", password: "password", profile: profile_coach)

profile_adrien = Profile.create(first_name: "Adrien", last_name: "Cassan", role: "Athlete")
user_adrien = User.create(email: "adrien.cassan@gmail.com", password: "password", profile: profile_adrien)


# EXERCICE
exercice_bench_press = Exercice.create(name: "Développé-Couché", nameEN: "Bench Press")


# WORKOUT PROGRAM
workout_template = Workout.create(profile: profile_adrien, name: "Programme Pectoraux / Dos", is_template: true)
set_template = Workoutset.create(workout: workout_template , exercice: exercice_bench_press)

repetition = Repetition.create(workoutset: set_template, quantity: 10, weight: 70)
repetition = Repetition.create(workoutset: set_template, quantity: 10, weight: 70)
repetition = Repetition.create(workoutset: set_template, quantity: 10, weight: 70)


# WORKOUT
workout = Workout.create(date: "10/09/2018", profile: profile_adrien, name: "Pectoraux / Dos", program_id: workout_template.id )
set = Workoutset.create(workout: workout, exercice: exercice_bench_press)

repetition = Repetition.create(workoutset: set, quantity: 10, weight: 70)
repetition = Repetition.create(workoutset: set, quantity: 10, weight: 70)
repetition = Repetition.create(workoutset: set, quantity: 10, weight: 70)






# WORKOUT SERIES

(1...8).to_a.each do |i|
  workout_history = Workout.create(date: "#{i}/09/2018", profile: profile_adrien, name: "Historical data")
  Workoutset.create(workout: workout_history, exercice: exercice_bench_press, total_weight: [100,120,140,150].sample)
end


# RESULT
result1 = Result.new(profile: profile_adrien, date: "2017-09-12", weight: 76.1, fatmass: 15)
result1.remote_selfie_url = "http://res.cloudinary.com/duojdxafe/image/upload/v1536851762/2017-09-12.jpg"
result1.save!

result2 = Result.new(profile: profile_adrien, date: "2018-04-03", weight: 75, fatmass: 13.6)
result2.remote_selfie_url = "http://res.cloudinary.com/duojdxafe/image/upload/v1536851764/2018-04-03.jpg"
result2.save!

result3 = Result.new(profile: profile_adrien, date: "2018-06-18", weight: 74.6, fatmass: 14)
result3.remote_selfie_url = "http://res.cloudinary.com/duojdxafe/image/upload/v1536851762/2018-06-18.jpg"
result3.save!

result4 = Result.new(profile: profile_adrien, date: "2018-08-26", weight: 78.7, fatmass: 10.6)
result4.remote_selfie_url = "http://res.cloudinary.com/duojdxafe/image/upload/v1536851763/2018-08-26.jpg"
result4.save!
