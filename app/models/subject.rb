class Subject < ActiveRecord::Base
  attr_accessible :name, :total_count

  has_many :selections
  has_many :members, through: :selections
end
