class Entry < ActiveRecord::Base
  attr_accessible :chef, :name, :photo, :category, :photo_cache, :photo_delete

  validates_presence_of :chef
  validates_presence_of :name
  validates_presence_of :photo
  validates_presence_of :category

  mount_uploader :photo, PhotoUploader

  def category_enum
    ["side", "dessert"]
  end

  def large_url
    photo.url(:large)
  end

  def thumb_url
    photo.url(:thumb)
  end
end
