require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  # # This is a sample dynamic route.
  get '/square/:number' do
    # @answer = (params[:number]*params[:number])
    
    # @answer = Math.sqrt(params[:number])
    # @answer.to_s

   (params[:number].to_i * params[:number].to_i).to_s
 
  end

  # # Code your final two routes here:
  get '/say/:number/:phrase' do
    # @answer
    # params[:number].to_i.times do
    #   @answer = params[:phrase]
    # end
    # @answer

    params[:phrase]*params[:number].to_i
 
    # @num = params[:number].to_i
    # @phrase = params[:phrase]
    # @phrase * @num
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @answer = params[:word1] +' '+ params[:word2] +' '+ params[:word3] +' '+ params[:word4] +' '+ params[:word5] 
    # @answer = params[:word1] +' '+ params[:word2] +' '+ params[:word3] +' '+ params[:word4] +' '+ params[:word5]

    # h.each {|key, value| puts "#{key} is #{value}" }
    @answer = ''
    params.each do |key, value|
      @answer = @answer + params[value]
    end
    
    
  end

  get '/:operation/:number1/:number2' do
    # @answer=(params[:num1].to_i * params[:num2].to_i)
    # # "#{@answer}"
    # @answer.to_s
    if params[:operation] == 'add'
      @answer = (params[:number1].to_i + params[:number2].to_i)
    elsif params[:operation] == 'subtract'
      @answer = (params[:number1].to_i - params[:number2].to_i)
    elsif params[:operation] == 'multiply'
      @answer = (params[:number1].to_i * params[:number2].to_i)
    elsif params[:operation] == 'divide'
      @answer = (params[:number1].to_i / params[:number2].to_i)
    end
    @answer.to_s
  end
end