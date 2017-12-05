class Matricreport < ApplicationRecord
	validates :school_name, :centre_no, presence: true, uniqueness: true
	


def self.search(search)
  search
    where("centre_no ilike :q or school_name ilike :q", q: "%#{search}%")
  rescue
    all
end
end
