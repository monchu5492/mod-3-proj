class Movie < ApplicationRecord
    has_many :watchlists
    has_many :users, through: :watchlists
    has_many :search_results
    has_many :searches, through: :search_results

    $movies = Movie.all


end



