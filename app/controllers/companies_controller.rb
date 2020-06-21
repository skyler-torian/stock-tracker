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

    median = Array.new
    close = @chart_30.map do |day|
         day.close
    end 
    median << close
    
    split_array = close.each_slice(5).to_a
   
    @sra_1 = split_array[0].sum / split_array.size
    @sra_2 = split_array[1].sum / split_array.size
    @sra_3 = split_array[2].sum / split_array.size
    @sra_4 = split_array[3].sum / split_array.size
    # @sra_5 = split_array[4].sum / split_array.size
    # @sra_6 = split_array[5].sum / split_array.size
    # @sra_7 = split_array[6].sum / split_array.size
    # @sra_8 = split_array[7].sum / split_array.size
    # @sra_9 = split_array[8].sum / split_array.size
    # @sra_10 = split_array[9].sum / split_array.size
    # @sra_11 = @split_array[10].sum / @split_array.size
    # @sra_12 = @split_array[11].sum / @split_array.size
    # @sra_13 = @split_array[12].sum / @split_array.size
    # @sra_14 = @split_array[13].sum / @split_array.size
    # @sra_15 = @split_array[14].sum / @split_array.size
    # @sra_16 = @split_array[15].sum / @split_array.size
    # @sra_17 = @split_array[16].sum / @split_array.size
    # @sra_18 = @split_array[17].sum / @split_array.size
    # @sra_19 = @split_array[18].sum / @split_array.size
    # @sra_20 = @split_array[19].sum / @split_array.size
    # @sra_21 = @split_array[20].sum / @split_array.size
    # @sra_22 = @split_array[21].sum / @split_array.size
   

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
