require "byebug"
class WatchlistsController < ApplicationController
    before_action :user_wl, only: [:index]
    before_action :find_wl, only: [:show, :edit, :destroy]

    def index
        
    end

    def new 
        @watchlist = Watchlist.new
    end

    def create 
        @watchlist = Watchlist.new(w_params)
        # @watchlist.movie_id = params[:movie][:id]
        if @watchlist.save
            redirect_to watchlists_path#(w_params[:user_id])
        else
            flash[:message] = "sorry something went wrong"
            redirect_to movies_path
        end
    end

    def shows
    end

    def edit
    end

    def destroy
        @watchlist.destroy
        if @watchlist.destroy
            redirect_to watchlists_path
        else
            flash[:message] = "something went wrong"
            render :show
        end
    end
    
    private 
    
    def w_params
        params.require(:watchlist).permit(:user_id, :movie_id)
    end
    def find_wl
        @watchlist = Watchlist.find(params[:id])
    end
    def user_wl
        @watchlists = Watchlist.select {|watchlist| watchlist.user_id == session[:user_id]}
    end
end

# def update
#     watchlist = Watchlist.find(params[:id])
    
#     watchlist.delete
#     watchlist.update_attributes(w_params)
#     if watchlist.save
#         redirect_to watchlist_path
#     else
#         flash[:message] = "something went wrong"
#         render :show
#     end
# end