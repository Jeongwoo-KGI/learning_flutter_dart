class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) {
        return false;
    } else {
        var a = checkWord(s).values;
        var b = checkWord(t).values;
        print(a);
        print(b);
        if (a == b){
            return true;
        } else {
            return false;
        };
    };
  }

  Map<String, int> checkWord(String s){
    Map<String, int> countMap = {};
    int counter = 1;
    for (int i = 0; i<s.length; i++) {
        if (countMap.containsKey(s[i])){
            countMap[s[i]] += 1;
        } else {
            countMap[s[i]] == 1;
        }
    };
    return countMap;
  }
}
