json.array!(@comments) do |comment|
  json.extract! comment, :id, :nickname, :comment, :is_public, :user_id, :company_id
  json.url comment_url(comment, format: :json)
end
