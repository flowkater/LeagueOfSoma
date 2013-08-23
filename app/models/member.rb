class Member < ActiveRecord::Base
  attr_accessible :name, :photo

  has_many :selections
  has_many :subjects, through: :selections

  def self.load_thirtytwo
  	ids = []
  	(1..all.length).to_a.shuffle.each do |id|
  		break if ids.length == 32
  		ids << id
  	end
  	find(ids).shuffle
  end
end
