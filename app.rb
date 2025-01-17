require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    string = ''
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do 
      string += @phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == "add"
      outcome = num1 + num2
    elsif operation == "subtract"
      outcome = num1 - num2
    elsif operation == "multiply"
      outcome = num1 * num2
    else
      outcome = num1/num2
    end
    "#{outcome}"

  end


end