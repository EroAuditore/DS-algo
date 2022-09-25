# //Google Question
# //Given an array = [2,5,1,2,3,5,1,2,4]:
# //It should return 2

# //Given an array = [2,1,1,2,3,5,1,2,4]:
# //It should return 1

# //Given an array = [2,3,4,5]:
# //It should return undefined

def first_recurring_char(input)

    hashTbl = Hash.new
    for value in input do
        if hashTbl.has_key?(value)
            return value
        else
            hashTbl[value] = value
        end    
    end

    return "no recuirring"
end


#test cases

puts first_recurring_char([2,5,1,2,3,5,1,2,4])
puts first_recurring_char([2,1,1,2,3,5,1,2,4])
puts first_recurring_char([2,3,4,5])
puts first_recurring_char([2,5,5,2,3,5,1,2,4])
