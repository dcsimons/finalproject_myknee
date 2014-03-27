json.array!(@surveys) do |survey|
  json.extract! survey, :id, :patient_id, :time_period, :q1_rating, :q2_rating, :q3_rating, :q4_rating, :q5_rating, :q6_rating
  json.url survey_url(survey, format: :json)
end
