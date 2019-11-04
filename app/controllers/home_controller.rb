class HomeController < ApplicationController
  def index
  	require 'net/http'
  	require 'json'

  	@url = 'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=fde93151b2814cd68c8e0396dfda3e32'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@output = JSON.parse(@response)
  	# @output = JSON.parse(@response)['articles'][0,5]

  	if @output.empty?
  		@final_output = "Error"
  	elsif !@output
  		@final_output = "Error"
  	else
	  	@final_output = @output['articles'][0]['source']['id']
	end

	def topic
	end

  end
end
