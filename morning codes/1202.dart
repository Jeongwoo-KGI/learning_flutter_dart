class Solution {
  bool isHappy(int n) {
    int current = n;
    Set<int> history = {n};
    while (current != 1) {
        
        
        if(history.contains(current)){
            break;
            return false; // it is looping 
        } else {
            history.add(current);
            int tracker = 0;
            while (current > 0){
                tracker += (current % 10)*(current % 10);
                current = current ~/10;
            }
            current = tracker;
            if (current <10 && current ~/10 == 0) { current = (current % 10)*(current % 10); } 
            
            //print(history);
        }

    }
    return true;
  }
}
