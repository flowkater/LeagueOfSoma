class Member < ActiveRecord::Base
  attr_accessible :name, :photo

  has_many :selections
  has_many :subjects, through: :selections

  def load_sixtyfour(members)
  	result = []
	members.each do |m|
		break if result.length == 64
		
	end  	
  end
end
