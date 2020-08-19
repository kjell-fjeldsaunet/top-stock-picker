Stock Picker
============

A method that takes an array of numbers. The numbers represent stock prices, one price per day. It returns an array containing the days where buying and selling would yield the highest profit. The first value of the resulting array is the buy-day, and the last value is the day to sell. The buy-day have to come before the sell-day. If profit is not possible(strictly descending values), an empty array is returned. 

### Pseudocode used as starting point
```
initialize results array
initilize profit variable
loop through array of prices
  loop through values after current value
    find profit for current price and price after current value
    if current profit is larger than total profit
      set current first value of results array to index first loop
      set second value to index of second loop
return results array
```

