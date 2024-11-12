class Solution {
  int compress(List<String> chars) {
    List char = chars.toList();
    Map freq = new Map();
    //print(freq);
    for (int i=0;i<chars.length;i++){
        if (freq[chars[i]].isNull()) {
            freq[chars[i]] = 1;
        } else {
        freq[chars[i]] += 1;
        }
    }
    int length = freq.length;
    if (length < chars.length){
        return freq.length;
    } else {
        return chars.length;
    }
  }
}