class CalcsController < ApplicationController

    def index
        @result = nil
    end
    
    def calculate
        user_input = params[:numbers]       
        arr = user_input.split(/(-|\*|\/|\+)/)

        def add(a, b)
           a + b
        end

        def multiply(a, b)
           a * b
        end

        def subtract(a, b)
            a - b
        end

        def divide(a, b)
            a / b
        end

        num1 = nil
        num2 = nil
        

        def times_divide(arr)
            for ele, index in arr.each_with_index
                if ele == '*'
                    num1 = arr[index - 1].to_i
                    num2 = arr[index + 1].to_i
                    arr[index] = multiply(num1, num2)
                    arr.delete_at(index - 1)
                    arr.delete_at(index)
                elsif ele == '/'
                    num1 = arr[index - 1].to_i
                    num2 = arr[index + 1].to_i
                    arr[index] = divide(num1, num2)
                    arr.delete_at(index - 1)
                    arr.delete_at(index)
                end
            end
        end
        
        def add_subtract(arr)
            for ele, index in arr.each_with_index
                if ele == '+'
                    num1 = arr[index - 1].to_i
                    num2 = arr[index + 1].to_i
                    arr[index] = add(num1, num2)
                    arr.delete_at(index - 1)
                    arr.delete_at(index)
                elsif ele == '-'
                    num1 = arr[index - 1].to_i
                    num2 = arr[index + 1].to_i
                    arr[index] = subtract(num1, num2)
                    arr.delete_at(index - 1)
                    arr.delete_at(index) 
                end
            end
        end

        times_divide(arr)
        add_subtract(arr)

        if arr.include?('*') || arr.include?('/')
            times_divide(arr)
        elsif arr.include?('+') || arr.include?('-')
            add_subtract(arr)
        end

        @result = arr[0]
        render :index, {result: @result} 
    end

end

# [15, "+", "1", "+", 3, "+", 900]


# ["5", "*", "3", "+", "1", "+", "6", "/", "2", "+", "9", "*", "100"]

# math = arr.map do |x|
#     if x.to_i != 0
#         x = x.to_i
#     elsif x == '/'
#         x = /\// 
#     elsif x == '*'
#         x = '*'
#     elsif x == '-'
#         x = /-/
#     elsif x == '+'
#         x = /\+/
#     end
# end





# if !ele.match(/\+|-|\*|\//) 
#     num1 = ele.to_i 
#     math = eval(arr[index + 1])
#     num2 = arr[index + 2].to_i

#     if num1 && num2 && math 
#         if math == '*'
#             @@result = multiply(num1, num2)
#         elsif math == '/'
#             @@result = divide(num1, num2)
#         elsif math == '+'
#             @@result = add(num1, num2)
#         elsif math == '-'
#             @@result = subtract(num1, num2)
#         end

#     end

#     byebug
# end
