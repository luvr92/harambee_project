class DiaryPost < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
