# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# USER
user_athlete = User.create(email: "athlete@gmail.com", password: "password")
user_coach = User.create(email: "coach@gmail.com", password: "password")

# PROFIL
profile_coach = Profile.create(user: user_coach, first_name: "Coach", last_name: "Family Name", role: "Coach" )
profile_athlete = Profile.create(user: user_athlete, first_name: "Athlete", last_name: "Family Name", role: "Athlete", profile: profile_coach )

# EXERCICE
exercice_bench_press = Exercice.create(name: "Développé-Couché", nameEN: "Bench Press")

# WORKOUT
workout = Workout.create(date: "10/09/2018", profile: profile_athlete, name: "Pectoraux / Dos")
set = WorkoutSet.create(workout: workout, exercice: exercice_bench_press)
