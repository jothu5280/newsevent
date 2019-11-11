class SearchesController < ApplicationController

	# def new	
	# 	@search = Search.new
	# end

	# def create
	# 	@search = Search.new(params[:search])
	#     if @search.save
	#       redirect_to @search, alert: "Search created successfully."
	#     else
	#       redirect_to new_search_path, alert: "Error creating search."
	#     end
	# end

	# def edit
 #  		@search = Search.find(params[:id])
	# end

	# def index 
	# 	@search = Search.all
	# end


 #  private

 #  def search_params
 #    params[:search].permit(:search_term)
 #  end


  def index
  	@searches = Search.all
  end

  def show
    @search = Search.find(params[:id])
  end

  def new
  end

  def create
  	# render plain: params[:search].inspect
	@search = Search.new(search_params)
	@search.save
	redirect_to root_path
  end

  def destroy
  end

  private
  	def search_params
  		params.require(:search).permit(:search_term)
  	end

end
