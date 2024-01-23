//?으로 선언 시 null일지 모르는 값에 호출이 안됨
String capitalizeName(String name) => name.toUpperCase();

//fat arrow를 활용하는 방법
String capitalizeName2(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  capitalizeName2('nico');
  capitalizeName2(null);
  String? name;
  //??= 다음 값이 Null일때 nico로 입력
  name ??= 'nico';
  //하지만 다음 값이 Null이 아니라면 그대로 가게 됨
  name ??= 'another';
  print(name);
  //name argument
}