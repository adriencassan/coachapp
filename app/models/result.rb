class Result < ApplicationRecord
  belongs_to :profile

  mount_uploader :selfie, AttachementUploader
end
