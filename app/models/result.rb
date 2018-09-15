class Result < ApplicationRecord
  belongs_to :profile

  mount_uploader :selfie, AttachementUploader

  def fatrate
    self.fatmass * 1.0 / self.weight
  end
end
