json.array!(@research_interests) do |research_interest|
  json.extract! research_interest, :id, :research_introduciton, :research_topic, :research_topic_en, :research_details, :research_details_en, :current_projects
  json.url research_interest_url(research_interest, format: :json)
end
