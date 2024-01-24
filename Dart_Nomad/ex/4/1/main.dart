class Player {
  //클래스를 생성할 때는 타입을 명시해야 함
  final String name = 'nico';
  int xp = 1500;

  void sayHello(){
    var name = '121';
    print("Hi my name is $name");
    //만약 겹치는 변수에 대해 구분이 필요하면 전역 변수 시 this.name을 사용(This)
  }
}

void main() {
  var player = new Player();
  print(player.name);
  print(player.xp);
  //정적으로 지정된 값을 변경하지 않게 하려면 변수 앞에 final을 붙여준다.
}