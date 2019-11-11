class Search < ApplicationRecord
	validates_uniqueness_of :search_term
	
end
