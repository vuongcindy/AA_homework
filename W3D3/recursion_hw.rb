require 'byebug'
# exercise 1
def sum_to(n) #doesn't work
    #base case
    return 0 if n == 0
    #inductive step
    if n > 0
        n + sum_to(n - 1)
    else
        nil
    end
end

# p sum_to(5)  # => returns 15
# p sum_to(1)  # => returns 1
# p sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil

# exercise 2
def add_numbers(nums_arr) #incomplete
    return nil if nums_arr.length == 0
    #base case
    return nums_arr[0] if nums_arr.length == 1
    #inductive step
    nums_arr[0] + add_numbers(nums_arr[1..-1])
    # puts num_arr[1..-1]
end

# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

# exercise 3
def gamma_fnc(n)
    return nil if n <= 0
    
    factorial(n - 1)
end

def factorial(n)
    return 1 if n == 0
    #inductive step
    n * factorial(n - 1)
end

# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

# exercise 4
def ice_cream_shop(flavors, favorite)
    #base case
    return false if flavors.length == 0
    return true if flavors[0] == favorite
    #inductive step
    ice_cream_shop(flavors[1..-1], favorite)
end

# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

# exercise 5
def reverse(str)
    return "" if str.length == 0
    #base case
    return str[0] if str.length == 1
    #inductive step
    reverse(str[1..-1]) + str[0]
end

# p reverse("house") # => "esuoh"
# p reverse("dog") # => "god"
# p reverse("atom") # => "mota"
# p reverse("q") # => "q"
# p reverse("id") # => "di"
# p reverse("") # => ""