json.array!(@posts) do |post|
  json.extract! post, :id, :title, :text, :like
  json.url post_url(post, format: :json)
end
