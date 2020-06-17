class UserCompany < ApplicationRecord
    belongs_to :companies
    belongs_to :users
end
