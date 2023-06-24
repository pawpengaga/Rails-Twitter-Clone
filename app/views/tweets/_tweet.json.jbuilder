json.extract! tweet, :id, :username, :description, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
