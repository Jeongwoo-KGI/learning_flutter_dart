// largest altitude
//status: solved
class Solution {
  int largestAltitude(List<int> gain) {
    int altitude = 0;
    int largest = 0;
    for(int i = 0; i<gain.length;i++){
        altitude += gain[i];
        if (largest < altitude){
            largest = altitude;
        }
        
    }
    return largest;
  }
}

//find unique difference
//status: solved
class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    List<int> l = (nums1.toSet().where((e) => !nums2.toSet().contains(e))).toList();
    List<int> r = (nums2.toSet().where((e) => !nums1.toSet().contains(e))).toList();
    return [l, r];
  }
}