class Search < ApplicationRecord
    belongs_to :user
    has_many :search_results
    has_many :movies, through: :search_results

    def self.for(s_term)
        Movie.where('LOWER(title) LIKE ?', "%#{s_term}%")
        #Contract.where('LOWER(contract_number) LIKE ?', "%#{keyword.downcase}%")
    end

end
