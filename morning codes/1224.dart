class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    //line search -> O(n^2)...
    //heap sort..? -> binary search this still would require to find the positions of higher value
    //stack -> if higher -> pop
    //int highest = temperatures[1];
    List<int> stack = [];
    List<int> answer = List.filled(temperatures.length,0);

    for(int i = 0; i<temperatures.length ;i++){
        while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
            
            int localHigh = stack.removeLast();
            answer[localHigh] = i - localHigh;
             
        }
        stack.add(i);
    }

    return answer;
  }
}
