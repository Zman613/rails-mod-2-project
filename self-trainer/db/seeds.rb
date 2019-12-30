# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
w1 = Workout.create(name: "squats", type: "kettle bell", decription: "This move is a great exercise for toning the glutes, and while you can use a dumbbell to execute the move, using a kettlebell will work more muscles and help challenge your balance.", directions: "Stand with feet wide, toes pointing forward, and hold a heavy kettlebell in front of you with palms facing toward you.
Keeping your chest lifted, squat until your thighs are parallel to the ground. Pause, and then rise up to standing and repeat. Do 20-25 reps.")
w2 = Workout.create(name: "squats", type: "ball squats", description: "This exercise not only can help you increase muscle mass and tone your legs, but will also improve your agility.", directions: "Take a few deep breaths, closing your eyes if this helps you to relax. As you exhale, slowly lower your body to the ground until your thighs are parallel to the ground. Once you reach this point, lift your body back up to the starting position. Repeat this ten times, and then take a short break. Perform two more sets of ten repetitions of the exercise.")
w2 = Workout.create(name: "planks", type: "mountain climbers", description: "Mountain climbers are great for building cardio endurance, core strength, and agility.")
Workout.create