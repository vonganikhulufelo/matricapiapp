class Matricreport < ApplicationRecord
def self.search(search)
  search
    where("centre_no ilike :q or school_name ilike :q", q: "%#{search}%")
  rescue
    all

end
end
