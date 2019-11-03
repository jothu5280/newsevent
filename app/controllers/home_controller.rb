class HomeController < ApplicationController
  def index
  	require 'net/http'
  	require 'json'

  	@url = 'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=fde93151b2814cd68c8e0396dfda3e32'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@output = JSON.parse(@response)
  	
  end
end
