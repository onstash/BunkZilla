json.array!(@bunks) do |bunk|
  json.extract! bunk, :id, :subjectname, :bunk, :total
  json.url bunk_url(bunk, format: :json)
end
