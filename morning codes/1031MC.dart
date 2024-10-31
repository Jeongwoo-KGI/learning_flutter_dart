///문자열의 단어반전
import 'dart:math';

/**
 * 1. 단어로 분리하기
 * 2. 단어로 분리된 리스트 반전
 */

List<String> splicing (String s){
  List<String> sList = s.split(' '); //단어로 분리
  for(int i=0; i<((sList.length)/2); i++){ 
    //맨 앞과 맨 뒤에서부터 하나씩 서로 바꾸기
    if(i == sList.length-1-i) {break;}
    String instantMemory = '';
    instantMemory = sList[i];
    sList[i] =  sList[sList.length-1-i];
    sList[sList.length-1] = instantMemory;
  }
  return sList;
}

///최대 평균 하위 배열 1
/**
 *input: nums, k
  output: maximum average
 */

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    List<double> averages = [];
    //list of averages
    if (nums.length == 1){
        return nums[0].toDouble();
    }
    for(int i=0; i<=(nums.length-k);i++){
        int avg = 0;
        for (int j=i; j<k+i;j++){
            avg += nums[j];
            //print(avg);
        }
        //print(avg/k);
        averages.add(avg/k);
    }
    print(averages);
    return averages.reduce(max);
    }
}