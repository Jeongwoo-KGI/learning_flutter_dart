//0 이동시키기
/** 주어진 정수 배열 nums에서 모든 0를 배열의 끝으로 이동시키고 나머지 숫자는 원래의 상대적인 순서를 유지하도록 한다
 * 배열을 수정해서 사용할것
 * 추가적인 배열을 사용하지 않고 수행할 것
 */

List<int> zeroMove(List<int> nums) {
  if (nums.length == 1){
    return nums; //정수 배열의 길이가 1일때 
  } else {
    //var placeZero = nums.where((numbers) => numbers == 0);
    for (int i = 0; i < nums.length; i++){
      if (nums[i] == 0){
        nums.remove(i);
        nums.add(0);
      }
    //nums.addAll(Iterable<int>.generate(placeZero.length).toList());
    }
  return nums;
  }
}

//부분수열
/** 두개의 문자열 s와 t
 * 문자열 두개가 부분수열인지 확인하는 함수
 * 부분수열: 문자열에서 일부 문자를 제거하고 나머지 문자의 상대적인 순서를 유지하여 만들 수 있는 문자열
 * 문자열은 모두 소문자
 */

bool isPartialString(List<String> s, List<String> t){
  //bool value = false;
  if (s.length <= t.length) {
    return partialChecker(s,t);
  } else {
    return partialChecker(t,s);
  }
}

bool partialChecker(List<String> shorter, List<String> longer){
  bool yesPartial = false;
  int tracker = 0;
  for (int i = 0; i<shorter.length; i++){
    if (tracker != 0){
      
    }
    if (longer.firstWhere((element) => element == shorter[i])){
      tracker = i;
    } else {
      return yesPartial;
    }
  }


  return yesPartial;
}
