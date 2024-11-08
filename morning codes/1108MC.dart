//import 'dart:math';
class Solution {
  int maxArea(List<int> height) {
    int? first;
    int? second;
    int max = 0;
    int potential = 0;
    for (int i = 0; i<(height.length;i++){
        first = height[i];
        for (int j = height.length-1; j>i;j--){
            second = height[j];
            //print(second);
            if (first <= second){
                potential = (j-i)*first;
                //print(potential);
                if (max < potential){
                    max = potential;
                }
            } else {
                potential = (j-i)*second;
                if (max < potential){
                    max = potential;
                }
            }
        }
    }
    return max;
  }
}