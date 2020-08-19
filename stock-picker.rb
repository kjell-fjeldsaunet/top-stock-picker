def stock_picker(prices_array)
  results = []
  profit = 0
  (0...(prices_array.length - 1)).each do |current_day| #Iterate only until second to last day
    ((current_day + 1)...prices_array.length).each do |sell_day| #iterate from next day until end
      potential_profit = prices_array[sell_day] - prices_array[current_day]
      if potential_profit > profit
        profit = potential_profit
        results[0] = current_day
        results[1] = sell_day
      end
    end
  end
  results
end
# Tests
# p stock_picker([17,3,6,9,15,8,6,1,10]) #=> [1, 4]
# p stock_picker([11,92,75,13,25,47,87,22,89,40]) #=> [0, 1]
# p stock_picker([1,5,27,27,11,10,3,38,23,17]) #=> [0, 7]
# p stock_picker([13,3,7,29,18,15,34,19,2,35]) #=> [8, 9]
# p stock_picker([25,8,5,36,30,21,12,14,49,24].sort) #=> [0, 9]
# p stock_picker([25,8,5,36,30,21,12,14,49,24].sort.reverse) #=> []