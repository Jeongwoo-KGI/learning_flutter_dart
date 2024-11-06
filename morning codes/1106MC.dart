import 'dart:collection';
class RecentCounter {

  Queue<int> q = Queue<int>();

  RecentCounter();
  
  int ping(int t) {

    q.addLast(t);

    while(q.last - q.first > 3000){
        q.removeFirst();
    }
    return q.length;

    //return count;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */