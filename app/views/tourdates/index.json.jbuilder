json.array!(@tourdates) do |tourdate|
  json.extract! tourdate, :id, :description, :status
  json.url tourdate_url(tourdate, format: :json)
end
