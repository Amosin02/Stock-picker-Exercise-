def stock_picker(array)
    hash = {}
    arr1 = []
    array.combination(2).each do |a,b|
        key = "#{b}-#{a}"
        hash[key] = b-a
    end

    highest_value = hash.values.max
    highest_key = hash.key(highest_value)
    substring = highest_key.split('-')
    #using the substring get the index of it in the array

    hold1 = substring[0]
    hold2 = substring[1]

    #substring is returned as string to we need to change it to int
    #that's the issue. So we changed the str to int. It's just like python
    hold1 = hold1.to_i
    hold2 = hold2.to_i

    arr1 << array.index(hold2)
    arr1 << array.index(hold1)

      print arr1
end

stock_picker([17,3,6,9,15,8,6,1,10])
#expected output [1,4]