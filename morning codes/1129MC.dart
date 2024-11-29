class Solution {
  bool isAnagram(String s, String t) {
    List<String> sW = s.split("");
    sW.sort();
    //print(sW);
    List<String> tW = t.split("");
    tW.sort();
    //print(tW);
    for (int i = 0; i<sW.length;i++){
        if (sW[i] != tW[i]){
            return false;
        }
    }
    if (sW.length == tW.length) {
        return true;
    }else{
        return false;
    }
  }
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int counter = 0;
    for(int i = 0;i<nums.length;i++){
        
        if (nums[i] != val) {
            nums[counter] = nums[i];
            counter += 1;
        }

    }
    //print(nums);
    return counter;
  }
}
