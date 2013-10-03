json.array!(@reviews) do |review|
  json.extract! review, :title, :waist_fit, :hip_fit, :thigh_fit, :rise, :waist_measure, :hip_measure, :thigh_measure, :content
  json.url review_url(review, format: :json)
end
