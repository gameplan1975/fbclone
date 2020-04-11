class Blog < ApplicationRecord
    belongs_to :user
    mount_uploader :blog_image, BlogImageUploader
    validates :content, presence: true
    default_scope -> { order(updated_at: :asc) }
end
