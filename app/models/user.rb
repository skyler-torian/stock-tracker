class User < ApplicationRecord
    include BCrypt 
    has_many :user_companies
    has_many :companies, through: :user_companies
    validates :email, uniqueness: true, presence: true,
    message: "Email must be unique!"
    validates :username, uniqueness: true, presence: true,
    message: "Username must be unique!"
    validates :password, presence: true 



    def password
        @password ||= Password.new(password_hash)
    end

    def password=(new_password)
        @password = Password.create(new_password)
        self.password_hash = @password_hash
    end

end
