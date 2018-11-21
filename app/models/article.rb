class Article < ApplicationRecord

  attr_accessor :slug

  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
    belongs_to :article_category, optional: true
    mount_uploader :cover_image, AvatarUploader
  # validates :title, :description, :cover_image, :article_category_id, presence: true

  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end

end
