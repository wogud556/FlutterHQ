typedef ListOfInts = List<int>;
typedef UserInfo = Map<String, String>;

List<int> reverseListOfNumbers(List<int> list) {
  var reverse = list.reversed;
  return reverse.toList();
}
//use typedef
ListOfInts reverseListOfNumbers2(ListOfInts list) {
  var reverse = list.reversed;
  return reverse.toList();
}

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(reverseListOfNumbers([1,2,3]));
  print(reverseListOfNumbers2([1,2,3]));

  sayHi({'name': 'nico'});

}