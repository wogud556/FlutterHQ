class Player {
  //클래스를 생성할 때는 타입을 명시해야 함
  late final String name;
  late int xp;

  // Player(String name, int xp){ 
  //   this.name = name;
  //   this.xp = xp;
  // }
  //생성자 표현을 이렇게 할 수 있음
  Player(this.name, this.xp);

  void sayHello(){
    print("Hi my name is $name");
    //만약 겹치는 변수에 대해 구분이 필요하면 전역 변수 시 this.name을 사용(This)
  }
}

void main() {
    var player = Player("nico",1500);
    player.sayHello();
    var player2 = Player("nico",1500);
    player2.sayHello();
  //정적으로 지정된 값을 변경하지 않게 하려면 변수 앞에 final을 붙여준다.
}