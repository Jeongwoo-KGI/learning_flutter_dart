class Solution {
  int rob(List<int> nums) {
    int alpha = 0;
    int beta = 0;
    for (int i = 0; i<nums.length;i++){
        int temp = alpha;
        alpha = max(beta+nums[i], alpha);
        beta = temp;
    }
    return alpha;
  }
