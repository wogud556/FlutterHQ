String sayHello(String name, int age, String country) {
  return "Hello $name you are $age, and you com from $country";
}
//name argument
// null safety를 적용하여 default값을 적용
String sayHello2({String name = 'anon', int age = 39, String country = 'wakanda'}) {
  return "Hello $name you are $age, and you com from $country";
}

//name argument
// 자료형 앞에 required를 붙여준다.
String sayHello3({
  required String name
, required int age
, required String country}) {
  return "Hello $name you are $age, and you com from $country";
}

void main() {
  print(sayHello3(
    age: 12,
    country : 'cuba',
    name : 'nico'
  ));

  //name argument
}