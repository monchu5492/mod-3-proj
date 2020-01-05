class User < ApplicationRecord
    has_many :watchlists
    has_many :movies, through: :watchlists
    has_many :searches
    has_many :search_results, through: :searches
    
    validates :name, :age, presence: true
    validates :name, uniqueness: { case_sensitive: true }
    validates :name, numericality: false
    validates :age, numericality: { only_integer: true }
    validates :age, length: { maximum: 3 }

end
