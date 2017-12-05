require 'csv'

namespace :import do
	task :matricreport => :environment do
		filename = File.join Rails.root, "herokufile.csv"
		CSV.foreach(filename) do |row|
			puts row
			emis, centre_no, sname, wrote_2014, passed_2014, wrote_2015, passed_2015, wrote_2016, passed_2016,
			pass_rate, failure_rate, pass_rate2015, failure_rate2015, pass_rate2016, failure_rate2016 = row

			Matricreport.create(emis: emis, centre_no: centre_no, school_name: sname,
			wrote_2014: wrote_2014, passed_2014: passed_2014, wrote_2015: wrote_2015,
			passed_2015: passed_2015, wrote_2016: wrote_2016, passed_2016: passed_2016,
			pass_rate: pass_rate,failure_rate: failure_rate, pass_rate2015: pass_rate2015, 
			failure_rate2015: failure_rate2015, pass_rate2016: pass_rate2016, failure_rate2016: failure_rate2016)
		end
	end
end
