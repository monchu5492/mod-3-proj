class WatchlistsController < ApplicationController
    def index
        @watchlists = Watchlist.all 
    end

    def new 
        @watchlist = Watchlist.new
    end

    def create 
        @watchlist = Watchlist.new(w_params)
        if @watchlist.save
            redirect_to watchlist_path(@watchlist)
        else
            render :new
        end
    end

    def show
        @watchlist = Watchlist.find(params[:id])
    end

    private 
    def w_params
        params.require(:watchlist).permit(:user_id, :movie_id)
    end
end
