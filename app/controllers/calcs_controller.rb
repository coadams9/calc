class CalcsController < ApplicationController
    @@result = nil

    def index

    end

    def calculate
        user_input = params[:numbers]       
        arr = user_input.split(/(-|\*|\/|\+)/)

        math = arr.map do |x|
            if x.to_i != 0
                x = x.to_i
            elsif x == '/'
                x = /\// 
            elsif x == '*'
                x = /\*/
            elsif x == '-'
                x = /-/
            elsif x == '+'
                x = /\+/
            end
        end

       
        byebug
    end

end




