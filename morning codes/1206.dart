class Solution {
  int lengthOfLongestSubstring(String s) {
    
    List<int> end = [];
    List<String> substring = [];
    
    for (int i = 0; i<workon.length;i++){
        
        if (substring.contains(workon[i])) {
            end.add(substring.length);
            //print(substring);
            substring = [workon[i]];

        } else {
            substring.add(workon[i]);
        }

    }
    //print(end);
    int lengths = 0;
    
    for(int i = 0; i<end.length;i++){
        if (end[i]> lengths) {
            lengths = end[i];
        };
    }
    return lengths;
  }
}
