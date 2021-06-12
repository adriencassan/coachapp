class Habitset < ApplicationRecord



  mount_uploader :coach_review_video, AttachementUploader
  mount_uploader :coach_guidelines_video, AttachementUploader
  mount_uploader :photo, AttachementUploader

  #has_many_attached :photo


  def coach_name
    Profile.find(coach_id).first_name unless coach_id.nil?
  end

  def coachee_name
    Profile.find(coachee_id).full_name unless coachee_id.nil?
  end

  def started_from_today
    if started_at.nil?
      0
    else
      (Date.today-started_at.to_date).to_i
    end
  end

  def self.habitsetTypes
    ["Healthy eating", "Healthy mind", "Benefit", "Learn new skill", "Challenge", "Results", "Days count", "Fit"]
  end

  def self.habitsetStatus
    ["Not started","Ongoing","Completed","Failed"]
  end

end
