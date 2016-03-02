json.id post.id
json.awesome_count post.awesome_count
json.description post.description
json.event_id post.event_id
json.feature_id post.feature_id
json.photo post.photo
json.user_id post.user_id
json.createdAt post.createdAt
json.updatedAt post.updatedAt
end 

json.id reply.id do |reply|
json.child_post_id reply.child_post_id
json.createdAt reply.createdAt
json.parent_post_id reply.parent_post_id
json.updatedAt reply.updatedAt
end