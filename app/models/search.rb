class Search < ApplicationRecord
    belongs_to :user
    has_many :search_results
    has_many :movies, through: :search_results

    def self.for(keyword)
        if keyword
          find(:all, :search_results => ['movie LIKE ?', "%#{search}%"])
        else
          find(:all)
        end
      end

    # def self.for(s_term)
    #     Movie.where('LOWER(title) LIKE ?', "%#{s_term}%")
    #     #Contract.where('LOWER(contract_number) LIKE ?', "%#{keyword.downcase}%")
    # end

    # def self.for(keyword)
   
    #     #results = Game.all
    #     if keyword != ""
    #         game = Game.select{|game| game.tournament.location == search}
    #         if game
    #             results = game
    #         else 
    #             results = Game.all
    #         end 
    #     else
    #         results
    #     end 

end
