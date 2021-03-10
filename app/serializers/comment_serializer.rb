class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :author, :world
end
