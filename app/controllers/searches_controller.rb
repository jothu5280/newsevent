class SearchesController < ApplicationController

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
	if @search.save
		render :json => @search
	else
		render :json => { :errors =>
			@search.errors.full_messages }, :status => 422
	end
	# redirect_to root_path
  end

  def destroy
  end

  private
  	def search_params
  		params.require(:search).permit(:search_term)
  	end

end
