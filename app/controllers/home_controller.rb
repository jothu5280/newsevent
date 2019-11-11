class HomeController < ApplicationController
  def index
  	require 'net/http'
  	require 'json'

  	@url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=fde93151b2814cd68c8e0396dfda3e32'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@output = JSON.parse(@response)
  	# @output = JSON.parse(@response)['articles'][0,5]

  	if @output.empty?
  		@final_output = "Error"
  	elsif !@output
  		@final_output = "Error"
  	else
	  	@final_output = @output['articles']
	  	# @final_output = @output['articles'][0]['source']['id']

	end


  end


	def topic
		@term_query = params[:topic]
		if params[:topic] == ""
			@term_query = "Please enter a topic to search for."
		elsif params[:topic]
			#do api stuff

		  	require 'net/http'
		  	require 'json'

		  	@url = 'https://newsapi.org/v2/top-headlines?country=us&q=' + @term_query + '&apiKey=fde93151b2814cd68c8e0396dfda3e32'
		  	@uri = URI(@url)
		  	@response = Net::HTTP.get(@uri)
		  	@output = JSON.parse(@response)

		  	@req = JSON.parse(@response)['status']

		  	# @req = (request.env).inspect 
		  	# @output = JSON.parse(@response)['articles'][0,5]

		  	if @output.empty?
		  		@final_output = "Error"
		  	elsif !@output
		  		@final_output = "Error"
		  	else
			  	@final_output = @output['articles']
			end



		end
	end

end
