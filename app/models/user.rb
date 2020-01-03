class User < ApplicationRecord
    has_many :watchlists
    has_many :movies, through: :watchlists
    has_many :searches
    has_many :search_results, through: :searches
    validates :name, uniqueness: true
end
