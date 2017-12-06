class Matricreport < ApplicationRecord
	validates :school_name, :centre_no, presence: true, uniqueness: true
	


	def self.search(search)
  		if search
    		where("centre_no LIKE ? OR school_name LIKE ?", "%#{search}%","%#{search}%")
  		else
  			all
		end
	end
end
