class Solution {
  int romanToInt(String s) {
    Map<String, int> map = {"I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000};
    int integer = map[s[0]]!;
    for (int i = 1; i<s.length; i++){
        //앞에 숫자가 작아서 빼야되는 상황일때
        if (map[s[i]]! > map[s[i-1]]!) {
            integer = integer - 2*map[s[i-1]]! + map[s[i]]!;
        } else {
            //나머지는 그냥 다 더해~
            integer += map[s[i]]!;
        }
    }
    return integer;
  }
}
