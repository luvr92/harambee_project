class Member < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
