# PROFIL

profile_adrien = Profile.create(first_name: "Adrien", last_name: "Cassan", role: "Athlete")
user_adrien = User.create(email: "adrien.cassan@gmail.com", password: "password", profile: profile_adrien)

profile_coach_alexandre = Profile.create(first_name: "Coach Alexandre", last_name: "Coach", role: "Coach" )
user_coach_alexandre = User.create(email: "coach.alexandre@gmail.com", password: "password", profile: profile_coach_alexandre)

profile_coach_mamadou = Profile.create(first_name: "Coach Mamadou", last_name: "Coach", role: "Coach" )
user_coach_mamadou = User.create(email: "coach.mamadou@gmail.com", password: "password", profile: profile_coach_mamadou)

# HABITS sETS
Habitset.create(name: 'Meal Prep - Tureky / Feta / Rice', is_model: true, coachee_id: profile_adrien, coach_id: profile_adrien)
Habitset.create(name: 'Workout Cardio 3 xTimes a week  - Challenge 2021 ', is_model: true, coachee_id: profile_adrien, coach_id: profile_adrien)
Habitset.create(name: 'Qi Qonc Exercice TBD  - Challenge 2021', is_model: true, coachee_id: profile_adrien, coach_id: profile_coach_alexandre)
Habitset.create(name: 'Bench Abs Mamadou  - Challenge 2021', is_model: true, coachee_id: profile_adrien, coach_id: profile_coach_mamadou)
