# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d1 = Physician.create(name: "Dr. John Smith", practice: "Smith Orthopaedics")
d2 = Physician.create(name: "Dr. John Doe", practice: "Doe Orthopaedics")
d3 = Physician.create(name: "Dr. Bob Roberts", practice: "Roberts Orthopaedics")
d4 = Physician.create(name: "Dr. Bill Williams", practice: "Williams Orthopaedics")
d5 = Physician.create(name: "Dr. Patch Adams", practice: "Adams Orthopaedics")

p1 = Patient.create(name: "Walter White", knee_location: "Right", surgery_type: "Total Knee Replacement")
p2 = Patient.create(name: "Jesse Pinkman", knee_location: "Left", surgery_type: "Partial Knee Replacement")
p3 = Patient.create(name: "Hank Schrader", knee_location: "Right", surgery_type: "Total Knee Replacement")
p4 = Patient.create(name: "Skylar White", knee_location: "Left", surgery_type: "Partial Knee Replacement")
p5 = Patient.create(name: "Saul Goodman", knee_location: "Right", surgery_type: "Revision Knee Replacement")
p6 = Patient.create(name: "Gustavo Fring", knee_location: "Left", surgery_type: "Total Knee Replacement")
p7 = Patient.create(name: "Tuco Salamanca", knee_location: "Right", surgery_type: "Revision Knee Replacement")
p8 = Patient.create(name: "Skylar White", knee_location: "Left", surgery_type: "Total Knee Replacement")
p9 = Patient.create(name: "Flynn White", knee_location: "Right", surgery_type: "Revision Knee Replacement")
p10 = Patient.create(name: "Marie Schrader", knee_location: "Left", surgery_type: "Partial Knee Replacement")

s1 = Survey.create(time_period: "1 Month")
s2 = Survey.create(time_period: "3 Months")
s3 = Survey.create(time_period: "6 Months")
s4 = Survey.create(time_period: "9 Months")
s5 = Survey.create(time_period: "12 Months")

q1 = Question.create(body: "What is the level of pain in your knee?")
q2 = Question.create(body: "What is the level of difficulty to walk?")
q3 = Question.create(body: "What is the level of difficulty to walk up and down stairs?")
q4 = Question.create(body: "What is the level of endurance when you walk?")
q5 = Question.create(body: "What is the level of difficulty to walk without a crutch or cane?")
q6 = Question.create(body: "What is the level of endurance when you walk without a crutch or cane?")

d1.patients << [p1, p2]
d2.patients << [p3, p4]
d3.patients << [p5, p6]
d4.patients << [p7, p8]
d5.patients << [p9, p10]