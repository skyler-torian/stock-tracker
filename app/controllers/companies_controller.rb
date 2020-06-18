class CompaniesController < ApplicationController


def index
    @companies = Company.search(params[:search])
end

def show
    @company = Company.search(params[:search].upcase)
end
  
  

private

def company_params
    params.require(:symbol).permit(:symbol, :search)
end


end
