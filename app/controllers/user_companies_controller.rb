class UserCompaniesController < ApplicationController

  def index
    @user_companies = UserCompany.all
  end

end
