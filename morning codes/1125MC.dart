class Solution {
  List<int> twoSum(List<int> nums, int target) {
    //there is only case of having to have to add two numbers
    //thus, there does not exist a case where the input itself already exists in the given list
    Map<int,int> diffs = {};
    for (int i = 0; i<nums.length;i++) {
        
        //check if there is a  case where the difference exists for an integer
        int diff = target - nums[i];
        if (diffs.containsKey(diff)) {
            //do I need to sort the outcome..?
            
            List<int> answer = [i, diffs[diff]].sort();
            print(answer);
            return answer;

        }
        //add the current eleemt of a list into a map 
        diffs[nums[i]] = i;


    }
    //when there is no answer
    return [0,0];
  }
}
