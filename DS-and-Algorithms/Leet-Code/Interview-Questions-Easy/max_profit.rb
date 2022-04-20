def max_profit(prices)
  return 0 if prices.length < 2
  min_price = prices[0]
  max_profit = 0
  prices.each do |price|
    max_profit = [max_profit, price - min_price].max
    min_price = [min_price, price].min
  end
  max_profit
end

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.length < 2
  min_price = prices[0]
  max_profit = 0
  prices.each do |price|
    max_profit = [max_profit, price - min_price].max
    byebug
    min_price = [min_price, price].min
  end
  max_profit
end

def max_profit(prices)
  money = 0

  prices.each_with_index do |price, i|
    if prices[i + 1] && price < prices[i + 1]
        money += (prices[i + 1] - price)
    end
  end

  money
end