require_relative 'Pairs'
require_relative 'Polo'
require_relative 'Twit'

class Main

	def initialize
		@polo = Polo.new
		@twit = Twit.new
		@pairs = Pairs.new

		loop do
			cycle
		end
	end

	def cycle
		protect
		sleep 3
		
	rescue Exception => exception
		exit if exception.message == 'exit'

		puts exception.message

		sleep 10
	end

	def protect
		@twit.removed(@pairs.list).each do |pair|
			if @polo.have pair
				@polo.sell pair
				puts "SELL - #{pair}"
			else
				@pairs.remove pair
				puts "REMOVE - #{pair}"
			end
		end
	end

end

Main.new