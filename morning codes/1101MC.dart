class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> answer = [];
    for (int i = 0; i<nums.length; i++){
        List<int> element = List.from(nums);
        int reduction = element.removeAt(i);
        answer.add(element.reduce((a,b) => a*b));
    }
    // var answer = nums.map((n){
    //     return nums.reduce((a,b)=>(a*b/n).toInt());
    // });
    return answer;
  }
}