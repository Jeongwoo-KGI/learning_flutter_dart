//pivot index
class Solution {
  int pivotIndex(List<int> nums) {
    
    if (nums.length == 1){
        return 0;
    }

    if (nums.sublist(1,nums.length).reduce((a,b) =>a+b) == 0){
        return 0;
    }

    for (int i = 1; i<nums.length-1; i++){
        //print(nums.sublist(0,i).reduce((a,b)=>a+b));
        //print(nums.sublist(i+1, nums.length).reduce((a,b)=>a+b));
        if (nums.sublist(0,i).reduce((a,b)=>a+b) == nums.sublist(i+1,nums.length).reduce((a,b)=>a+b)){
            return i;
        }
    }

    if (nums.sublist(0,nums.length-1).reduce((a,b) =>a+b) == 0){
        return nums.length-1;
    }

    return -1;

  }
}

//unique occurances
class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map occurance = {}};
    for (int i = 0; i<arr.length, i++){
        occurance[arr[i]] += 1;
    }
    List<int> occ_list = [];
    
  }
}