class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :author, :world_id
end
