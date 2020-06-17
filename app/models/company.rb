class Company < ApplicationRecord
belongs_to :user_company
has_many :users, through: :user_company

end
