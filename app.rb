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
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @phrase_n = @number.times{@string += @phrase}


    # binding.pry
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end
  get '/:operation/:number1/:number2' do

  end
end
