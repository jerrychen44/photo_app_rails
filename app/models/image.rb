#add by scaffold
class Image < ApplicationRecord

  belongs_to :user
  #[Jerry] to associate images with picture, we just install the picture_uploader.rb
  mount_uploader :picture, PictureUploader

end
