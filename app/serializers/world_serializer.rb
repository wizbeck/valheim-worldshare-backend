class WorldSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :seed, :description, :image_url, :creator, :likes, :comments
end
