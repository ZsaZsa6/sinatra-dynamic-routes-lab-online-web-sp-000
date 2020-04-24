require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
  end
  get '/square/:number' do
    @square_number = params[:number].to_i** 2
    @square_number.to_s

  end
  get '/say/:number/:phrase' do
    @string = ""
    (params[:number].to_i).times do
    @string += "#{params[:phrase]}"
    end
    @string
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @total = @n1@operator@n2
    @total.to_s

  end
end
