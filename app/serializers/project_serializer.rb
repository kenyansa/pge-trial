class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :description, :slug

  has_many :reviews
end
