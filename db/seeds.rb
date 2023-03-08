# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
doctor1 = User.create(
  first_name: "Gregory",
  last_name: "House",
  email: "dr.house@med.fr",
  password: "testgh",
  speciality: "GP",
  authentification_number: "123456789"
)

doctor2 = User.create(
  first_name: "John",
  last_name: "Doolittle",
  email: "dr.doolitle@med.fr",
  password: "testjd",
  speciality: "dentist",
  authentification_number: "223456789"
)

doctor3 = User.create(
  first_name: "Virginia",
  last_name: "Apgar",
  email: "dr.apgar@med.fr",
  password: "testva",
  speciality: "pediatrician",
  authentification_number: "323456789"
)

doctor4 = User.create(
  first_name: "Shaun",
  last_name: "Murphy",
  email: "dr.murphy@med.fr",
  password: "testsm",
  speciality: "surgeon",
  authentification_number: "423456789"
)

doctor5 = User.create(
  first_name: "Paul",
  last_name: "Eyes",
  email: "dr.eyes@med.fr",
  password: "testpe",
  speciality: "ophtalmologist",
  authentification_number: "523456789"
)

puts "#{User.count} doctors created"

days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
days_times = ["Morning", "Noon", "Evening", "Night", "If necessary"]

days.each do |day|
  days_times.each do |time|
    DailyTake.create(day: day, day_time: time)
  end
end

puts "#{DailyTake.count} daily_take created"
