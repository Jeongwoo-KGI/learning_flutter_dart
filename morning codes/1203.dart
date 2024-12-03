class Solution {
  bool isPalindrome(String s) {
    int mid = 0;
    String lower = '';
    //leave only alphanumeric characters
    for (var c in s.split('')){
        if (RegExp(r'[a-zA-Z0-9]').hasMatch(c)){
            lower += c.toLowerCase();
        }
    }

    int length = lower.length;
    //print(s);
    //print(length);
    
    //finding middle
    if (length%2 == 1){
        //print((length-1)/2);
        mid = (length-1)~/2;
    } else {
        mid = (length~/2)-1;
    };
    //print(mid);
    for (int i = 0; i<=mid; i++){
        if (lower[i] != lower[length -1 -i]) {
            return false;
        }
    };
    return true;

  }
}

//bruteforce
class Solution {
  int maxProfit(List<int> prices) {
    int max = 0;
    for (int i = 0; i<prices.length; i++){
        for (int j = 0; j<i;j++) {
            int newMax = prices[i] - prices[j];
            if (newMax > max) {
                max = newMax;
            }
        }
    }
    return max;
  }
}