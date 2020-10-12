require "open-uri"

class ApplicationController < ActionController::Base
	def crawl
		html = open("https://www.home.co.uk/for_rent/ealing/current_rents?location=ealing")
		doc = Nokogiri::HTML(html)

		i = 0
		price = nil

		# binding.pry


		# doc.css(".table.table--plain td").each do |td|
			# puts td.children[0].text	
			# if td.children[0].text.include?("Average")
			# 	puts td.children[0].text	
			# 	i++		
			# elsif i > 1 
			# 	price = td.children[0].text	
			# 	break								
			# end
		# end
		# binding.pry
		# sleep(3)

		puts "rednerind...."
		render json: { average_price: "£1,784 pcm" }
	end
end
