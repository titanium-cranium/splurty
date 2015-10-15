class Quote < ActiveRecord::Base
	validates :author, :presence => true, :length => { in: 3..140 } #remember I had to swap author & saying fields
	validates :saying, :presence => true, :length => { in: 3..50 }
end


