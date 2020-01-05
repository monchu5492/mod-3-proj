class Movie < ApplicationRecord
    has_many :watchlists
    has_many :users, through: :watchlists
    has_many :search_results
    has_many :searches, through: :search_results
    has_many :movie_genres
    has_many :genres, through: :movie_genres


    $movies = Movie.all


end



