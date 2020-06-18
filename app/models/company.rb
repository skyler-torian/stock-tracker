class Company < ApplicationRecord
has_many :user_companies
has_many :users, through: :user_companies

def self.search(search)
    if search
        company_symbol = Company.find_by(symbol: search)
            else @companies = Company.all
    end
end
    
end
     


