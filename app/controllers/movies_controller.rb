class MoviesController < ApplicationController
    def index
        @movies = Movie.all 
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(m_params)
        if @movie.save
            redirect_to movie_path
        else
            render :new
        end
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update_attributes(m_params)
        if @movie.save
            redirect_to movie_path(@movie)
        else 
            render :edit
        end
    end

    def show 
        @movie = Movie.find(params[:id])
    end

    private

    def m_params
        params.require(:movie).permit(:title, :genre, :rating, :description, :cast)
    end


    
end
