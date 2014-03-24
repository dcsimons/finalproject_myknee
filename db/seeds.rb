# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Survey.create(time_period: "1 Month")
Survey.create(time_period: "3 Months")
Survey.create(time_period: "6 Months")
Survey.create(time_period: "9 Months")
Survey.create(time_period: "12 Months")

Question.create(body: "What is the level of pain in your knee?")
Question.create(body: "What is the level of difficulty to walk?")
Question.create(body: "What is the level of difficulty to walk up and down stairs?")
Question.create(body: "What is the level of endurance when you walk?")
Question.create(body: "What is the level of difficulty to walk without a crutch or cane?")
Question.create(body: "What is the level of endurance when you walk without a crutch or cane?")

Rating.create(survey_id: "1", question_id: "1", value: "3")
Rating.create(survey_id: "1", question_id: "2", value: "4")
Rating.create(survey_id: "1", question_id: "3", value: "2")
Rating.create(survey_id: "1", question_id: "4", value: "5")
Rating.create(survey_id: "1", question_id: "5", value: "1")
Rating.create(survey_id: "1", question_id: "6", value: "2")

Rating.create(survey_id: "2", question_id: "1", value: "3")
Rating.create(survey_id: "2", question_id: "2", value: "4")
Rating.create(survey_id: "2", question_id: "3", value: "2")
Rating.create(survey_id: "2", question_id: "4", value: "5")
Rating.create(survey_id: "2", question_id: "5", value: "1")
Rating.create(survey_id: "2", question_id: "6", value: "2")

Rating.create(survey_id: "3", question_id: "1", value: "3")
Rating.create(survey_id: "3", question_id: "2", value: "4")
Rating.create(survey_id: "3", question_id: "3", value: "2")
Rating.create(survey_id: "3", question_id: "4", value: "5")
Rating.create(survey_id: "3", question_id: "5", value: "1")
Rating.create(survey_id: "3", question_id: "6", value: "2")

Rating.create(survey_id: "4", question_id: "1", value: "3")
Rating.create(survey_id: "4", question_id: "2", value: "4")
Rating.create(survey_id: "4", question_id: "3", value: "2")
Rating.create(survey_id: "4", question_id: "4", value: "5")
Rating.create(survey_id: "4", question_id: "5", value: "1")
Rating.create(survey_id: "4", question_id: "6", value: "2")

Rating.create(survey_id: "5", question_id: "1", value: "3")
Rating.create(survey_id: "5", question_id: "2", value: "4")
Rating.create(survey_id: "5", question_id: "3", value: "2")
Rating.create(survey_id: "5", question_id: "4", value: "5")
Rating.create(survey_id: "5", question_id: "5", value: "1")
Rating.create(survey_id: "5", question_id: "6", value: "2")