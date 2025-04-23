class Solution {
  int maxProfit(List<int> prices) {
    ///Sliding window algortihm
    ///Keeps track of the prices difference throughout
    ///initial 0 th index will be minimum & price is 0
    ///Iterate through and compare prices(profit) diff and update minimum
    int minimum = prices[0];
    int profit = 0;

    for(int i=1;i<prices.length;i++){
        final cost = prices[i] - minimum;
        profit = max(profit,cost);
        minimum = min(minimum,prices[i]);
    }

    return profit;
  }
}