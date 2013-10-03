json.array!(@pants) do |pant|
  json.extract! pant, :name, :year, :style, :price_range
  json.url pant_url(pant, format: :json)
end
