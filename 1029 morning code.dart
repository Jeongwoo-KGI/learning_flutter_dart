//묹자들의 역모음

//List<String> vowel = [];
List<String> vowels = ['a','e','i','o','u','A','E','I','O','U'];
var place = new Map();
String word = "";
List<int> max = [-1];

String revertVowels(String inputWord){
  for (int i = 0; i<inputWord.length; i++){
    if ((vowels.contains(inputWord[i]))){
      //word += vowel[i];
      place[i] = inputWord[i];
      if (i > max[-1]) {
        max.add(i);
      }
    }
  }

  for (int i = 0; i<inputWord.length; i++){
    if (place[i] == true){
      //word += vowel[i];
      word += place[max[-1]];
      max.remove(max[-1]);
    } else {
      word += inputWord[i];
    }
  }
  return(word);
}

void main() {
  print(revertVowels('sleep'));
}
