class Blog < ApplicationRecord
    belongs_to :user
    mount_uploader :blog_image, BlogImageUploader
    validates :content, presence: true
end
