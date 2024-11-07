class Solution {
  bool increasingTriplet(List<int> nums) {
    // BST bst = BST();
    // for (int i = 0; i<nums.length;i++){
    //     bst.insertValue(nums[i]);
    // }
    // bool truth;
    //now if there are depth of 3 to the right from any node, return true
    //f (bst.)
    //return truth;

    int first = nums[0];
    int second = nums[0];
    
    for (int i = 0; i<nums.length;i++){
        if(first > nums[i]){
            first = nums[i];
        } else if(second > nums[i]) {
            second = nums[i];
        } else {
            if (second != first){
                return true;
            }  
            //break;
        }
    }
    return false;