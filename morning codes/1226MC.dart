class Solution {
  String intToRoman(int num) {
    //use map to find the values
    //there are subtracted forms with 4 and 9 
    Map<int, String> roman = {1000: 'M', 900:'CM', 500:'D', 400:'CD', 100: 'C', 90: 'XC', 50:'L', 40:'XL', 10:'X', 9:'IX', 5:'V', 4:'IV', 1:"I"};
    String answer = '';
    // now formulate the roman form
    //easiest way -> map each case of number to roman 
    //this is painful to write a lengthy code of going through 23 cases...
    String len = num.toString();
    for(int i = 0; i<len.length; i++){
        
    }
  }
}
