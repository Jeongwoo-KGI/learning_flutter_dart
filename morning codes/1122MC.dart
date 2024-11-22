class Solution {
  int majorityElement(List<int> nums) {
    int counter = 1;
    int potential = nums[0];

    for (int i = 0; i < nums.length ; i++){
        if (nums[i] == potential) {
            counter += 1;
        } else {
            counter -= 1;
            if (counter == 0) {
                potential = nums[i];
                counter = 1;
            }
        }
    };
    return potential;
  }
} //26

class Solution {
  int removeDuplicates(List<int> nums) {
    List<int> expectedNums = nums.toSet().toList();
    //print(output);
    //print(output.length);
    return expectedNums.length;
  }
} //150