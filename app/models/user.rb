class User < ActiveRecord::Base
	attr_accessible :member_id, :subject_id, :step

	belongs_to :member
	belongs_to :subject
end
