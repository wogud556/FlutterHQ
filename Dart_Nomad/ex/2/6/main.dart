void main() {
  Set<int> numbers = {1,2,3,4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);

  List<int> numbers2 = [1,2,3,4];
  numbers2.add(1);
  numbers2.add(1);
  numbers2.add(1);
  print(numbers2);
  //set과 list의 차이는 항목에 중복이 존재하냐 안하냐 차이가 있음

  var numbers3 = {1,2,3,4};
  numbers3.add(1);
  numbers3.add(1);
  numbers3.add(1);
  print(numbers3);
}