class Selection < ActiveRecord::Base
  attr_accessible :member_id, :subject_id

  belongs_to :member
  belongs_to :subject

  def self.rank
  	@subject = Subject.last
  	@member_ids = all.collect{|s| s.member_id if s.subject_id ==  @subject.id}
  	@hash = @member_ids.inject(Hash.new(0)) {|sums,x| sums[x] += 1; sums}
  end
end
