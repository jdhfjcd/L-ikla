class Post < ApplicationRecord
    belongs_to :user

    mount_uploader :image, ImageUploader

    attr_accessor :image_x
    attr_accessor :image_y
    attr_accessor :image_w
    attr_accessor :image_h
    
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user

    has_many :comments, dependent: :destroy

    # crop用の仮想attribute

end
