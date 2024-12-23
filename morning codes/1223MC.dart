class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> anagram = {}; //anagram: List of words 
    //순서 정렬 -> 같은 그룹끼리 묶기
    if (strs.length == 0 || strs.length == 1) {
        return [strs];
    } 
    for(int i = 0; i<strs.length; i++) {
        //strs only contains lowercase lettters
        String sorted = String.fromCharCodes(strs[i].runes.toList()..sort());

        //Save it to map
        if(anagram.containsKey(sorted)){
            anagram[sorted]!.add(strs[i]);
        } else {
            anagram[sorted] = [strs[i]];
        }
    }
    return anagram.values.toList();

  }
}
