String sayHello(
  String name,
  int age,
  [String? country = 'cuba']
)
 => "Hello $name you are $age, and you com from $country";
void main() {
  var results = sayHello('nico', 12);
  print(results);
  //name argument
}