class Solution {
  int tribonacci(int n) {
    int first = 0;
    int second = 1;
    int third = 1;
    if (n >=3){
        for (int i=3; i<=n;i++) {
            if (i%3 == 1){
                second += (first + third);
                //print(second);
            }
            else if (i%3 == 2){
                third += (first + second);
                //print(third);
            }
            else {
                first += (second + third);
                //print(first);
            }
        }
    }
    
    if (n%3 == 1){return second;}
    else if (n%3 == 2) {return third;}
    else {return first;}

  }
}
