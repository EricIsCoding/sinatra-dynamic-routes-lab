require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number_to_square = params[:number]
    "#{@number_to_square.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @string = ""
    @number_of_times = params[:number].to_i
    @user_phrase = params[:phrase]
    @number_of_times.times do 
      @string << "#{@user_phrase}"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_one = params[:word1]
    @word_two = params[:word2]
    @word_three = params[:word3]
    @word_four = params[:word4]
    @word_five = params[:word5]
    "#{@word_one} #{@word_two} #{@word_three} #{@word_four} #{@word_five}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num_one = params[:number1].to_i
    @num_two = params[:number2].to_i
    case @operation
    when "add"
      "#{@num_one + @num_two}"
    when "subtract"
      "#{@num_one - @num_two}"
    when "multiply"
      "#{@num_one * @num_two}"
    when "divide"
      "#{@num_one / @num_two}"
    end
  end
end