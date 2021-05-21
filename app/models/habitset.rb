class Habitset < ApplicationRecord
  mount_uploader :coach_feedback_video, AttachementUploader
  mount_uploader :coach_guideline_video, AttachementUploader

end
