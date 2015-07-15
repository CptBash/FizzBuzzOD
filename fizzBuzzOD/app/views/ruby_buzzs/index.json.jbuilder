json.array!(@ruby_buzzs) do |ruby_buzz|
  json.extract! ruby_buzz, :id, :question, :answer, :submission
  json.url ruby_buzz_url(ruby_buzz, format: :json)
end
