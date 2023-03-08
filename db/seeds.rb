# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Patient.destroy_all
# # User.destroy_all
# DailyTake.destroy_all
# Medicine.destroy_all

patient1 = Patient.create(
  first_name: "John",
  last_name: "Doe",
  birthday: Date.new(2002,3,1),
  social_security_number: "102037851302208",
  pathology: "diabète",
  medical_record: "",
  height: 183,
  weight: 78,
  gender: "masculin"
)

patient2 = Patient.create(
  first_name: "Jane",
  last_name: "Thomas",
  birthday: Date.new(1998,7,13),
  social_security_number: "298077851304567",
  pathology: "",
  medical_record: "",
  height: 168,
  weight: 50,
  gender: "féminin"
)

patient3 = Patient.create(
  first_name: "Guillaume",
  last_name: "Petit",
  birthday: Date.new(2001,2,14),
  social_security_number: "101020651303409",
  pathology: "",
  medical_record: "",
  height: 180,
  weight: 70,
  gender: "masculin"
)

patient4 = Patient.create(
  first_name: "Marine",
  last_name: "Garret",
  birthday: Date.new(1980,6,22),
  social_security_number: "280068351302690",
  pathology: "",
  medical_record: "",
  height: 170,
  weight: 54,
  gender: "féminin"
)

patient5 = Patient.create(
  first_name: "Marylou",
  last_name: "Frami",
  birthday: Date.new(2004,4,24),
  social_security_number: "204080651313456",
  pathology: "",
  medical_record: "",
  height: 165,
  weight: 54,
  gender: "féminin"
)

puts "#{Patient.count} Patients created"

doctor1 = User.create(
  first_name: "Gregory",
  last_name: "House",
  email: "dr.house@med.fr",
  password: "testgh",
  speciality: "medecine",
  authentification_number: "123456789"
)

doctor2 = User.create(
  first_name: "John",
  last_name: "Doolittle",
  email: "dr.doolitle@med.fr",
  password: "testjd",
  speciality: "gynécologie",
  authentification_number: "223456789"
)

doctor3 = User.create(
  first_name: "Virginia",
  last_name: "Apgar",
  email: "dr.apgar@med.fr",
  password: "testva",
  speciality: "anésthésiologie",
  authentification_number: "323456789"
)

doctor4 = User.create(
  first_name: "Shaun",
  last_name: "Murphy",
  email: "dr.murphy@med.fr",
  password: "testsm",
  speciality: "cardiologie",
  authentification_number: "423456789"
)

doctor5 = User.create(
  first_name: "Paul",
  last_name: "Eyes",
  email: "dr.eyes@med.fr",
  password: "testpe",
  speciality: "chirurgie",
  authentification_number: "523456789"
)

puts "#{User.count} Users created"

days = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
days_times = ["Matin", "Midi", "Soir", "Nuit", "Si besoin"]

days.each do |day|
  days_times.each do |time|
    DailyTake.create(day: day, day_time: time)
  end
end

puts "#{DailyTake.count} daily_takes created"

medicine1 = Medicine.create(
  name: "Doliprane",
  NR: "Remboursable"
)

medicine2 = Medicine.create(
  name: "Advil",
  NR: "Remboursable"
)

medicine3 = Medicine.create(
  name: "Maxilase",
  NR: "Non-Remboursable"
)

medicine4 = Medicine.create(
  name: "Amoxicilline",
  NR: "Remboursable"
)

medicine5 = Medicine.create(
  name: "Aspirine",
  NR: "Remboursable"
)

medicine5 = Medicine.create(
  name: "Allergoflash",
  NR: "Non-Remboursable"
)

puts "#{Medicine.count} medicines created"
