json.array!(@fortune_messages) do |fortune_message|
  json.extract! fortune_message, :id, :content
  json.url fortune_message_url(fortune_message, format: :json)
end
