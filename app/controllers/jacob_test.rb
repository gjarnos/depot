class Shirt
  has_many :images, through: :images_for_entities
  has_many :images_for_entities
end

class FullOutfit
  has_many :images, through: :images_for_entities
  has_many :images_for_entities
end

class ImagesForEntities
  belongs_to :entity
  belongs_to :images
end

class Images
  has_many :images_for_entities
end