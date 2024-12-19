class Solution {
  int hIndex(List<int> citations) {
    citations.sort((a, b) => b.compareTo(a));  // 내림차순 정렬

    int h = 0;
    // [3,0,6,1,5] => [6, 5, 3, 1, 0]
    // [11, 10, 9, 8, 3, 1, 0]
    for (int i = 0; i < citations.length; i++) {
      if (citations[i] >= i + 1) {  // citations[i]가 인덱스 이상일 경우
        h = i + 1;
      } else {
        break;
      }
    }
    return h;
  }
}
