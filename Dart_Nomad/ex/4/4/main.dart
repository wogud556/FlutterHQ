class Player {
  //클래스를 생성할 때는 타입을 명시해야 함
  final String name, team;
  int xp, age;


  // Player(String name, int xp){ 
  //   this.name = name;
  //   this.xp = xp;
  // }
  //생성자 표현을 이렇게 할 수 있음
  Player({required this.name,
          required this.xp,
          required this.team,
          required this.age});
 
  Player.createBluePlayer({
          required String name,
          required int age
  }) : this.age = age,
      this.name = name,
      this.team = 'blue',
      this.xp = 0;

  Player.createRedPlayer({
          required String name,
          required int age
  }) : this.age = age,
      this.name = name,
      this.team = 'red',
      this.xp = 0;

  void sayHello(){

    //만약 겹치는 변수에 대해 구분이 필요하면 전역 변수 시 this.name을 사용(This)
  }
}

void main() {
    var blueplayer = Player.createBluePlayer(
      name: "nico",
      age: 21,
    );
    var redplayer = Player.createRedPlayer(
      name: "nico",
      age: 21,
    );

  //정적으로 지정된 값을 변경하지 않게 하려면 변수 앞에 final을 붙여준다.
}