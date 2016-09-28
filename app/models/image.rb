#add by scaffold
class Image < ApplicationRecord

  belongs_to :user
  #[Jerry] to associate images with picture, we just install the picture_uploader.rb
  mount_uploader :picture, PictureUploader
  #[Jerry] Add image size validations
  validate :picture_size

  private#[Jerry] Add image size validations

  def picture_size#[Jerry] Add image size validations

    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end

  end


end
