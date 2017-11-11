require 'http'
require 'openssl'
require 'json'

class Polo

	def initialize
		@key, @secret = File.read('keys.txt').split("\n")
	end

	def have(pair)
		#
	end

	def sell(pair)
		#
	end

	private

	def api_call
		#
	end

	def headers
		#
	end

	def readable(num)
		'%1.8f' % num.to_f
	end

end