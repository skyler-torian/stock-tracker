require 'iex-ruby-client'

class CompaniesController < ApplicationController
   


def index
    @companies = Company.all
end

def show
    client = IEX::Api::Client.new(
        publishable_token: 'pk_03db2fa6b30c4d59a05cd17497e9f7aa',
        endpoint: 'https://cloud.iexapis.com/v1'
      )
      if params[:id] == ""
        @nothing = "You forgot to enter a symbol."
      elsif
    
      if params[:id]
        begin
        @stock = IEX::Resources::Quote.get(params[:id])
        @company = IEX::Resources::Company.get(params[:id])
        rescue StandardError
            @error = "That stock symbol doesn't seem to exist. Please enter another symbol."
        end
      end
    end
    @user = params[:user_id]
    @company = client.company(params[:search])
    @company_info = client.quote(params[:search])
    @chart = client.chart(params[:search])
    @chart_30 = client.chart(params[:search], '1m')

    #capture prior 30 days of close data
    close = @chart_30.map do |day|
         day.close
    end 
    
    split_array = close.each_slice(1).to_a
    concatenated = Array.new
    split_array.each do |array|
        concatenated.concat(array)
    end

    #determine sra 
    @sra = Array.new
    i = 5
   until i >= 22 do
       sliced_array = concatenated.slice(i-5..i-1)
       
        sum = sliced_array.reduce(:+)
       
        avg = (sum / sliced_array.length).round(2)
        i += 1
        @sra << avg

   end 
   
    
    end
  
   
    def create
        @company = Company.create
        @company.symbol = params[:symbol]
        @company.save!
    end
    
      
    
      
    
    private
    
    def company_params
        params.require(:symbol).permit!
    end
    
    
    end

   

 
    
  
    


