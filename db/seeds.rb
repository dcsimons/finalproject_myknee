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
	knee_company_img: "/images/zimmer_logo.png",
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
	knee_company_img: "/images/biomet_logo.png",
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
	knee_company_img: "/images/stryker_logo.png",
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
	knee_company_img: "/images/depuy_logo.png",
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
	knee_company_img: "/images/zimmer_logo.png",
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
	knee_company_img: "/images/biomet_logo.png",
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
	knee_company_img: "/images/stryker_logo.png",
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
	knee_company_img: "/images/depuy_logo.png",
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
	knee_company_img: "/images/zimmer_logo.png",
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
	knee_company_img: "/images/zimmer_logo.png",
	knee_brand: "Persona",
	address1: "1000 Main Street",
	address2: "",
	city: "San Francisco",
	state: "California",
	zipcode: "94122",
	phone: "5558881234",
	email: "marieschrader@test.com"
)

s1 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s2 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s3 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s4 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s5 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s6 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s7 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s8 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s9 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s10 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s11 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s12 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s13 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s14 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s15 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s16 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s17 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s18 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s19 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s20 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s21 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s22 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s23 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s24 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s25 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s26 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s27 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s28 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s29 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s30 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s31 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s32 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s33 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s34 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s35 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s36 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s37 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s38 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s39 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s40 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s41 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s42 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s43 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s44 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s45 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

s46 = Survey.create(time_period: "1 Month", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s47 = Survey.create(time_period: "3 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s48 = Survey.create(time_period: "6 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s49 = Survey.create(time_period: "9 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")
s50 = Survey.create(time_period: "12 Months", status: "COMPLETED", q1_rating: "3", q2_rating: "5", q3_rating: "4", q4_rating: "2", q5_rating: "1", q6_rating: "4")

p1.surveys << [s1, s2, s3, s4, s5]
p2.surveys << [s6, s7, s8, s9, s10]
p3.surveys << [s11, s12, s13, s14, s15]
p4.surveys << [s16, s17, s18, s19, s20]
p5.surveys << [s21, s22, s23, s24, s25]
p6.surveys << [s26, s27, s28, s29, s30]
p7.surveys << [s31, s32, s33, s34, s35]
p8.surveys << [s36, s37, s38, s39, s40]
p9.surveys << [s41, s42, s43, s44, s45]
p10.surveys << [s46, s47, s48, s49, s50]

d1.patients << [p1, p2]
d2.patients << [p3, p4]
d3.patients << [p5, p6]
d4.patients << [p7, p8]
d5.patients << [p9, p10]