class Quote < ActiveRecord::Base
	validates :author, :presence => true, :length => { in: 3..140 } #remember I had to swap author & saying fields
	validates :saying, :presence => true, :length => { in: 3..50 }


	def unique_tag
		abbr = []
		abbr = self.saying.split(" ").collect do |sub_string|
			sub_string[0]
		end
		
		return abbr.join + '#' + self.id.to_s
	end


end


