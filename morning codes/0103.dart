class Solution {
  int maxProfit(List<int> prices) {
    int net = 0;
    for(int i = 1; i < prices.length;i++){
        int diff = prices[i] - prices[i-1];
        if(diff>0) {net += diff;};
    }
    return net;
  }
}
