class User < ApplicationRecord
    belongs_to :user_company
    has_many :companies, through: :user_company
end
