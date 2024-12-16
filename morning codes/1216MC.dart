class Solution {
  String convert(String s, int numRows) {
    if(numRows == 1) {return s;}
    int gap = numRows - 2;
    List<String>diag = [];
    //build a map with List<String> to contain each letters
    int len = s.length;
    for(int i = 0; i<numRows ; i++){
        //find indexes that belongs to a specific row(i)
        for(int j = 0; j<len; j++){
            if (j%(numRows+gap) == i || j%(numRows+gap-i) == 0){
                diag.add(s[j]);
            } 
        }
    }
    return diag.join('');
  }
}
