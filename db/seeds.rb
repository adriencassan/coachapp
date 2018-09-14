# PROFIL
profile_coach = Profile.create(first_name: "Coach", last_name: "Family Name", role: "Coach" )
user_coach = User.create(email: "coach@gmail.com", password: "password", profile: profile_coach)

profile_adrien = Profile.create(first_name: "Adrien", last_name: "Cassan", role: "Athlete")
user_adrien = User.create(email: "adrien.cassan@gmail.com", password: "password", profile: profile_adrien)

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

# EXERCICES
Exercice.create(id: 1, name: 'Smith Machine Squats', nameEN: 'Smith Machine Squats')
Exercice.create(id: 2, name: 'Leg Extensions', nameEN: 'Leg Extensions')
Exercice.create(id: 3, name: 'Walking Lunges', nameEN: 'Walking Lunges')
Exercice.create(id: 4, name: 'Leg Presses', nameEN: 'Leg Presses')
Exercice.create(id: 5, name: 'Cable Flys', nameEN: 'Cable Flys')
Exercice.create(id: 6, name: 'Barbell Back Presses', nameEN: 'Barbell Back Presses')
Exercice.create(id: 7, name: 'Dumbbell Front Raises', nameEN: 'Dumbbell Front Raises')
Exercice.create(id: 8, name: 'Tirage horizontal', nameEN: 'Tirage horizontal')
Exercice.create(id: 9, name: 'Machine Presses', nameEN: 'Machine Presses')
Exercice.create(id: 10, name: 'Dumbbell Shrugs', nameEN: 'Dumbbell Shrugs')
Exercice.create(id: 11, name: 'Rowing vertical', nameEN: 'Rowing vertical')
Exercice.create(id: 12, name: 'Bent-Over Dumbbell Lateral Raises', nameEN: 'Bent-Over Dumbbell Lateral Raises')
Exercice.create(id: 13, name: 'Developpe Militaire', nameEN: 'Developpe Militaire')
Exercice.create(id: 14, name: 'Barbell Bench Presses', nameEN: 'Barbell Bench Presses')
Exercice.create(id: 15, name: 'Incline Dumbbell Flys', nameEN: 'Incline Dumbbell Flys')
Exercice.create(id: 16, name: 'Hammer Curls', nameEN: 'Hammer Curls')
Exercice.create(id: 17, name: 'Incline Barbell Bench Presses', nameEN: 'Incline Barbell Bench Presses')
Exercice.create(id: 18, name: 'Barbell Curls', nameEN: 'Barbell Curls')
Exercice.create(id: 19, name: 'Machine Flys', nameEN: 'Machine Flys')
Exercice.create(id: 20, name: 'Push-Ups', nameEN: 'Push-Ups')
Exercice.create(id: 21, name: 'TRX calins', nameEN: 'TRX calins')
Exercice.create(id: 22, name: 'Concentration Curls', nameEN: 'Concentration Curls')
Exercice.create(id: 23, name: 'TRX Biceps', nameEN: 'TRX Biceps')
Exercice.create(id: 24, name: 'Machine Bench Presses', nameEN: 'Machine Bench Presses')
Exercice.create(id: 25, name: 'Poulis Basse', nameEN: 'Poulis Basse')
Exercice.create(id: 26, name: 'Chin-Ups', nameEN: 'Chin-Ups')
Exercice.create(id: 27, name: 'Parallel Bar Dips', nameEN: 'Parallel Bar Dips')
Exercice.create(id: 28, name: 'Close-Grip Barbell Bench Presses', nameEN: 'Close-Grip Barbell Bench Presses')
Exercice.create(id: 29, name: 'Lat Pull-Downs', nameEN: 'Lat Pull-Downs')
Exercice.create(id: 30, name: 'Poulie Verticale', nameEN: 'Poulie Verticale')
Exercice.create(id: 31, name: 'Back Extensions', nameEN: 'Back Extensions')
Exercice.create(id: 32, name: 'Close-Grip Lat Pull-Downs', nameEN: 'Close-Grip Lat Pull-Downs')
Exercice.create(id: 33, name: 'Barbell Deadlifts', nameEN: 'Barbell Deadlifts')
Exercice.create(id: 39, name: 'Reverse Chin-Ups', nameEN: 'Reverse Chin-Ups')
Exercice.create(id: 40, name: 'TRX Push-up Large', nameEN: 'TRX Push-up Large')
Exercice.create(id: 41, name: 'Swing au Kettle bell', nameEN: 'Swing au Kettle bell')
Exercice.create(id: 42, name: 'Barbell Rows', nameEN: 'Barbell Rows')
Exercice.create(id: 43, name: 'Extensions triceps Poulie Reverse', nameEN: 'Extensions triceps Poulie Reverse')
Exercice.create(id: 44, name: 'Lying Barbell Triceps Extensions', nameEN: 'Lying Barbell Triceps Extensions')
Exercice.create(id: 45, name: 'Push-Downs', nameEN: 'Push-Downs')
