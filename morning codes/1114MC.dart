class Solution {
  String removeStars(String s) {
    List<String> removed = [];
    for (int i = 0; i<s.length; i++){
        if (s[i] == '*'){
            removed.removeLast();
        } else {
            removed.add(s[i]);
        }
    }
    return removed.join();
  }
}
