json.array!(@news) do |news|
  json.extract! news, :id, :title, :date, :post
  json.url news_url(news, format: :json)
end
