require 'iex-ruby-client'

class CompaniesController < ApplicationController


      def index
        if params[:id] == ""
          @nothing = "You forgot to enter a symbol ;)."
        elsif
      
        if params[:id]
          begin
          @stock = IEX::Resources::Quote.get(params[:id])
          @company = IEX::Resources::Company.get(params[:id])
          rescue StandardError
          @error = "That stock symbol doesn't seem to exist. Please enter 
            another symbol."
          end
        end
      end
      end

def show
    client = IEX::Api::Client.new(
        publishable_token: 'pk_03db2fa6b30c4d59a05cd17497e9f7aa',
        endpoint: 'https://cloud.iexapis.com/v1'
      )
      if params[:id] == ""
        @nothing = "You forgot to enter a symbol ;)."
      elsif
    
      if params[:id]
        begin
        @stock = IEX::Resources::Quote.get(params[:id])
        @company = IEX::Resources::Company.get(params[:id])
        rescue StandardError
        @error = "That stock symbol doesn't seem to exist. Please enter 
          another symbol."
        #   byebug
        end
      end
    end
    # @company = Company.search(params[:search].upcase)
    @company = client.company(params[:search])
    @company_info = client.quote(params[:search])
    @chart = client.chart(params[:search])
    @chart_30 = client.chart(params[:search], '1m')
    pp @chart_30
end
  
  

private

def company_params
    params.require(:symbol).permit(:symbol, :search)
end


end
