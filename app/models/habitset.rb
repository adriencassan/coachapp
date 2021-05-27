class Habitset < ApplicationRecord


  mount_uploader :coach_review_video, AttachementUploader
  mount_uploader :coach_guidelines_video, AttachementUploader
  mount_uploader :photo, AttachementUploader

  #has_many_attached :photo


  def coach_name
    Profile.find(coach_id).full_name unless coach_id.nil?
  end

  def coachee_name
    Profile.find(coachee_id).full_name unless coachee_id.nil?
  end

  def started_from_today
    if started_at.nil? or is_completed
      0
    else
      (Date.today-started_at.to_date ).to_i
    end
  end

  def self.habitsetTypes
    ["Repas midi", "Repas soir", "Challenge"]
  end

end
