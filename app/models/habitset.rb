class Habitset < ApplicationRecord
  mount_uploader :coach_review_video, AttachementUploader
  mount_uploader :coach_guidelines_video, AttachementUploader

  def self.dates
    ["2021-05-21","2021-05-22","2021-05-23","2021-05-24"]
  end

  def coach_name
    Profile.find(coach_id).full_name unless coach_id.nil?
  end

  def self.habitsetTypes
    ["Repas midi", "Repas soir", "Challenge"]
  end

end
