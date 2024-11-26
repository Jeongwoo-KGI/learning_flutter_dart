class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> words = s.split(" ");
    print(words);
    bool boolean = false;
    //specify the case when the return value should be true
    Map<String, String> dictionary = {}; //pattern:words
    if (words.length == pattern.length){
        for (int i = 0; i<pattern.length; i++){
            if (dictionary.containsKey(pattern[i]) & dictionary[pattern[i]] == words[i] ){
                
            }

        };
        boolean = true;
    };
    



    return boolean;
  }
}
