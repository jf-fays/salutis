# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Patient.destroy_all

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
