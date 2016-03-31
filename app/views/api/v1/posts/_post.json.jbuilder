json.id post.id
json.awesome_count post.awesome_count
json.description post.description
json.event_id post.event_id
json.feature_id post.feature_id
json.photo post.photo
json.user_id post.user_id
json.createdAt post.createdAt
json.updatedAt post.updatedAt

json.replies post.replies.each do |reply|
  json.(reply, :id, :child_post_id, :parent_post_id, :createdAt, :updatedAt)
end
