String sayhello(String name) {
  print("Hello $name nice to meet you!");
  return "Hello $name nice to meet you!";
  //return 시 함수의 자료형에 맞게 지정해줌
}
// 이런식으로 arrow functio을 사용할 수 있다. 이때는 함수의 줄수가 한줄일때만 사용한다.
String sayhello2(String name) => "Hello $name nice to meet you!";
  //return 시 함수의 자료형에 맞게 지정해줌

void main() {
  print(sayhello('nice'));
  
}