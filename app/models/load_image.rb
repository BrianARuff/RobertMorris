class LoadImage < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
  
  def set_success(format, opts)
    self.success = true
  end
  
end