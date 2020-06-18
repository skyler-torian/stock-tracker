

class User < ApplicationRecord
    # include BCrypt 
    has_many :user_companies
    has_many :companies, through: :user_companies
    validates :email, uniqueness: true, presence: true
   
    validates :username, uniqueness: true, presence: true
    # message: "Username must be unique!"
    validates :password, presence: true 



    def password
        @password = User.new(password)
    end

    # def password=(new_password)
    #     @password = User.create(new_password)
    #     self.password = @password
    # end

end
