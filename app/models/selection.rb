class Selection < ActiveRecord::Base
  attr_accessible :member_id, :subject_id

  belongs_to :member
  belongs_to :subject
end
