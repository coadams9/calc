class CalcsController < ApplicationController
    def new
        @calc = Calc.new
        # a.to_i + b.to_i
    end

    def add
        byebug
        @calc = Calc.new
        a = params[:num_input1]
        b = params[:num_input2]
        answer = a.to_i + b.to_i
        @calc.answer = answer
    end

    def subtract(a,b)
        a.to_i - b.to_i
    end

    def multiply(a,b)
        a.to_i * b.to_i
    end

    def divide(a,b)
        a.to_i / b.to_i
    end
end
