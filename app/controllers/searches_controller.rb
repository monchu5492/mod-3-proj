class SearchesController < ApplicationController
    
    def index
        @searches = Search.all
    end

    def new
        @search = Search.new
    end

    def create
        @search = Search.new(s_params)
        if @search.save
            redirect_to movie_path


   
        # @search = Search.new
        # if jump = jump_target
        #   redirect_to jump
        # else
        #   @results = Search.for(params[:s_term])
        # end


      
     

    
    def create
        @search = Search.new(search_params)
        if @search.save
            session[:search_id] = @search.id
            redirect_to :root
        else
            render :index
        end
    end
    
    private
    
    def search_params
        params.require(:search).permit(:s_term, :user_id,)
    end


    
    # def 
    #   Movie.find_by(title: params[:s_term]) 
    # #    || genre: params[:s_term] || rating: params[:s_term])
    # #   Contract.find_by(contract_number: params[:keyword])
    # end
end
