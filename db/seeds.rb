# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d1 = Physician.create(
	name: "Dr. Gregory House", 
	practice: "House Orthopaedics",
	address1: "5000 Main Street",
	address2: "SUITE 100",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "drhouse@houseortho.com"
)
d2 = Physician.create(
	name: "Dr. James Andrews", 
	practice: "Andrews Orthopaedics",
	address1: "5000 Main Street",
	address2: "SUITE 200",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "drandrews@andrewsortho.com"
)
d3 = Physician.create(
	name: "Dr. Emmett Brown", 
	practice: "Brown Orthopaedics",
	address1: "5000 Main Street",
	address2: "SUITE 300",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "drbrown@brownortho.com"
)
d4 = Physician.create(
	name: "Dr. Archibald Graham", 
	practice: "Graham Orthopaedics",
	address1: "5000 Main Street",
	address2: "SUITE 400",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "drgraham@grahamortho.com"
)
d5 = Physician.create(
	name: "Dr. Patch Adams", 
	practice: "Adams Orthopaedics",
	address1: "5000 Main Street",
	address2: "SUITE 500",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "patch@adamsortho.com"
)

p1 = Patient.create(
	name: "Walter White", 
	knee_location: "Right", 
	surgery_type: "Total Knee Replacement",
	knee_company: "Zimmer",
	knee_company_img: "app/assets/images/zimmer_logo.png",
	knee_brand: "Persona",
	address1: "1000 Main Street",
	address2: "",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "walterwhite@test.com"
)
p2 = Patient.create(
	name: "Jesse Pinkman", 
	knee_location: "Left", 
	surgery_type: "Partial Knee Replacement",
	knee_company: "Biomet",
	knee_company_img: "app/assets/images/bioment_logo.png",
	knee_brand: "Vanguard",
	address1: "1000 Main Street",
	address2: "APT 100",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "jessepinkman@test.com"
)
p3 = Patient.create(
	name: "Hank Schrader", 
	knee_location: "Right", 
	surgery_type: "Total Knee Replacement",
	knee_company: "Stryker",
	knee_company_img: "app/assets/images/stryker_logo.png",
	knee_brand: "Scorpio",
	address1: "1000 Main Street",
	address2: "",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "hankschrader@test.com"
)
p4 = Patient.create(
	name: "Skylar White", 
	knee_location: "Left", 
	surgery_type: "Partial Knee Replacement",
	knee_company: "DePuy",
	knee_company_img: "app/assets/images/depuy_logo.png",
	knee_brand: "Sigma",
	address1: "1000 Main Street",
	address2: "",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "skylarwhite@test.com"
)
p5 = Patient.create(
	name: "Saul Goodman", 
	knee_location: "Right", 
	surgery_type: "Revision Knee Replacement",
	knee_company: "Zimmer",
	knee_company_img: "app/assets/images/zimmer_logo.png",
	knee_brand: "NexGen",
	address1: "1000 Main Street",
	address2: "APT 200",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "saulgoodman@test.com"
)
p6 = Patient.create(
	name: "Gustavo Fring", 
	knee_location: "Left", 
	surgery_type: "Total Knee Replacement",
	knee_company: "Biomet",
	knee_company_img: "app/assets/images/biomet_logo.png",
	knee_brand: "Vanguard",
	address1: "1000 Main Street",
	address2: "",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "gustavofring@test.com"
)
p7 = Patient.create(
	name: "Tuco Salamanca", 
	knee_location: "Right", 
	surgery_type: "Revision Knee Replacement",
	knee_company: "Stryker",
	knee_company_img: "app/assets/images/stryker_logo.png",
	knee_brand: "Scorpio",
	address1: "1000 Main Street",
	address2: "APT 300",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "tuco@test.com"
)
p8 = Patient.create(
	name: "Mike Ehrmantraut", 
	knee_location: "Left", 
	surgery_type: "Total Knee Replacement",
	knee_company: "DePuy",
	knee_company_img: "app/assets/images/depuy_logo.png",
	knee_brand: "Sigma",
	address1: "1000 Main Street",
	address2: "APT 400",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "mikee@test.com"
)
p9 = Patient.create(
	name: "Flynn White", 
	knee_location: "Right", 
	surgery_type: "Revision Knee Replacement",
	knee_company: "Zimmer",
	knee_company_img: "app/assets/images/zimmer_logo.png",
	knee_brand: "NexGen",
	address1: "1000 Main Street",
	address2: "",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "flynnwhite@test.com"
)
p10 = Patient.create(
	name: "Marie Schrader", 
	knee_location: "Left", 
	surgery_type: "Partial Knee Replacement",
	knee_company: "Zimmer",
	knee_company_img: "app/assets/images/zimmer_logo.png",
	knee_brand: "Persona",
	address1: "1000 Main Street",
	address2: "",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "marieschrader@test.com"
)

s1 = Survey.create(time_period: "1 Month", status: "COMPLETED")
s2 = Survey.create(time_period: "3 Months", status: "COMPLETED")
s3 = Survey.create(time_period: "6 Months", status: "COMPLETED")
s4 = Survey.create(time_period: "9 Months", status: "COMPLETED")
s5 = Survey.create(time_period: "12 Months", status: "COMPLETED")

q1 = Question.create(body: "What is the level of pain in your knee?")
q2 = Question.create(body: "What is the level of difficulty to walk?")
q3 = Question.create(body: "What is the level of difficulty to walk up and down stairs?")
q4 = Question.create(body: "What is the level of endurance when you walk?")
q5 = Question.create(body: "What is the level of difficulty to walk without a crutch or cane?")
q6 = Question.create(body: "What is the level of endurance when you walk without a crutch or cane?")

r1 = Rating.create(value: "1")
r2 = Rating.create(value: "2")
r3 = Rating.create(value: "3")
r4 = Rating.create(value: "4")
r5 = Rating.create(value: "5")

q1.ratings << r3
q2.ratings << r5
q3.ratings << r4
q4.ratings << r2
q5.ratings << r1
q6.ratings << r4

s1.questions << [q1, q2, q3, q4, q5, q6]
s2.questions << [q1, q2, q3, q4, q5, q6]
s3.questions << [q1, q2, q3, q4, q5, q6]
s4.questions << [q1, q2, q3, q4, q5, q6]
s5.questions << [q1, q2, q3, q4, q5, q6]

d1.patients << [p1, p2]
d2.patients << [p3, p4]
d3.patients << [p5, p6]
d4.patients << [p7, p8]
d5.patients << [p9, p10]

p1.surveys << [s1, s2, s3, s4, s5]
p2.surveys << [s1, s2, s3, s4, s5]
p3.surveys << [s1, s2, s3, s4, s5]
p4.surveys << [s1, s2, s3, s4, s5]
p5.surveys << [s1, s2, s3, s4, s5]
p6.surveys << [s1, s2, s3, s4, s5]
p7.surveys << [s1, s2, s3, s4, s5]
p8.surveys << [s1, s2, s3, s4, s5]
p9.surveys << [s1, s2, s3, s4, s5]
p10.surveys << [s1, s2, s3, s4, s5]
