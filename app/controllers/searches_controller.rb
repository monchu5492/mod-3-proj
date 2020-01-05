class SearchesController < ApplicationController
    
    def index
        @projects = Project.search(params[:search])
    end

    def new
        @search = Search.new
    end

    def create
        @search = Search.new(s_params)
        if @search.save
            #search_r = SearchResult.create(search_id: @search.id, movie_id: @)
            redirect_to search_results_path
        else
            render :new
        end
    end
    
    def create
        @search = Search.new(s_params)
        if @search.save
            session[:search_id] = @search.id
            redirect_to :root
        else
            render :index
        end
    end
    
    private
    
    def s_params
        params.require(:search).permit(:s_term, :user_id, :search)
    end

    # def results
    #     input = params[:searchinput]

    #     @inresult = Movie.all().where(name: ${input} )

    #     @addresult = Search.all.groupby(size).DESC


    # end


    
    # def 
    #   Movie.find_by(title: params[:s_term]) 
    # #    || genre: params[:s_term] || rating: params[:s_term])
    # #   Contract.find_by(contract_number: params[:keyword])
    # end
end
