class Habitset < ApplicationRecord
  mount_uploader :coach_review_video, AttachementUploader
  mount_uploader :coach_guidelines_video, AttachementUploader

  def coach_name
    Profile.find(coach_id).full_name unless coach_id.nil?
  end

  def coachee_name
    Profile.find(coachee_id).full_name unless coachee_id.nil?
  end

  def self.habitsetTypes
    ["Repas midi", "Repas soir", "Challenge"]
  end

end
