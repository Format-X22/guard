class Pairs
	attr_reader :list

	def initialize
		@list = File.read('pairs.txt').split("\n")
	end

	def remove(pair)
		@list = @list - [pair]

		File.write('pairs.txt', @list.join("\n"))
	end

end
