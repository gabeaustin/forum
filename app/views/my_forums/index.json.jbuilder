json.array!(@my_forums) do |my_forum|
  json.extract! my_forum, :id, :name, :description
  json.url my_forum_url(my_forum, format: :json)
end
