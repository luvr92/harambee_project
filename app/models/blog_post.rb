class BlogPost < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
