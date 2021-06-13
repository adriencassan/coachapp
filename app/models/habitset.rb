class Habitset < ApplicationRecord
  belongs_to :habit_element
  has_many :habitset_lines
  accepts_nested_attributes_for :habitset_lines, allow_destroy: true

  #Parent / Child relationship for habitset
  #belongs_to :habitset, foreign_key: 'habitset_parent_id'
  #has_many :habitset, foreign_key: 'habitset_parent_id'

  mount_uploader :coach_review_video, AttachementUploader
  mount_uploader :coach_guidelines_video, AttachementUploader
  mount_uploader :photo, AttachementUploader
  mount_uploader :result_photo, AttachementUploader

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

  def children?
    Habitset.where(habitset_parent_id: self.id).count != 0
  end

   def children
    Habitset.where(habitset_parent_id: self.id)
  end

end
