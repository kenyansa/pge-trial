class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :project_id
end
