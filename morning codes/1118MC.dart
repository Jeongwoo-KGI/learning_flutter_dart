class Solution {
  int singleNumber(List<int> nums) {
    List<int> numberCount = [];
    for (int i = 0;i<nums.length;i++){
        if (numberCount.contains(nums[i])){
            numberCount.remove(nums[i]);
        }
        else{
            numberCount.add(nums[i]);
        }
    }
    return numberCount[0];
  }
}

class Solution {
  List<int> countBits(int n) {
    List<int> bits = [];
    for (int i = 0; i<=n;i++){
        //count the bits and save it in order
        int counter = 0;
        int k = i;
        do {
            counter += k %2;
            k = k~/2;
        } while (k > 0);
        bits.add(counter);   
    }
    return bits;
    
  }
}
