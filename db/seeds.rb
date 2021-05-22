# PROFIL

profile_adrien = Profile.create(first_name: "Adrien", last_name: "Cassan", role: "Athlete")
user_adrien = User.create(email: "adrien.cassan@gmail.com", password: "password", profile: profile_adrien)

profile_coach_alexandre = Profile.create(first_name: "Coach Alexandre", last_name: "Coach", role: "Coach" )
user_coach_alexandre = User.create(email: "coach.alexandre@gmail.com", password: "password", profile: profile_coach_alexandre)

profile_coach_mamadou = Profile.create(first_name: "Coach Mamadou", last_name: "Coach", role: "Coach" )
user_coach_mamadou = User.create(email: "coach.mamadou@gmail.com", password: "password", profile: profile_coach_mamadou)

# HABITSERS MODEL
Habitset.create(name: 'Meal Prep - Tureky / Feta / Rice', is_model: true, coachee_id: profile_adrien, coach_id: profile_adrien)
Habitset.create(name: 'Workout Cardio 3 xTimes a week  - Challenge 2021 ', is_model: true, coachee_id: profile_adrien, coach_id: profile_adrien)
Habitset.create(name: 'Qi Qonc Exercice TBD  - Challenge 2021', is_model: true, coachee_id: profile_adrien, coach_id: profile_coach_alexandre)
Habitset.create(name: 'Bench Abs Mamadou  - Challenge 2021', is_model: true, coachee_id: profile_adrien, coach_id: profile_coach_mamadou)


# HABITSERS
Habitset.create(date: "2021-05-22", habitset_type:"Callenge", name: 'Qi Qonc Exercice TBD  - Challenge 2021', is_active: true, is_model: false, coachee_id: profile_adrien, coach_id: profile_coach_alexandre)
Habitset.create(date: "2021-05-22", habitset_type:"Repas Midi", name: 'Quitoque - Tofu teriyaki et poêlée de carotte et navet', is_active: true, is_model: false, coachee_id: profile_adrien)
Habitset.create(date: "2021-05-22", habitset_type:"Repas Soir",name: 'Quitoque - Salade de fregola sarda à la mozzarella, olives et menthe', is_active: true, is_model: false, coachee_id: profile_adrien, url:"quitoque.fr/recette/5298/taboule-citronne-aux-merguez")
Habitset.create(date: "2021-05-23", habitset_type:"Repas Midi", name: 'Quitoque - Boeuf aux oignons et riz rouge', is_active: true, is_model: false, coachee_id: profile_adrien)
Habitset.create(date: "2021-05-23", habitset_type:"Repas Soir", name: 'Quitoque - Risotto de crevettes et épinards au parmesan AOP', is_active: true, is_model: false, coachee_id: profile_adrien)
