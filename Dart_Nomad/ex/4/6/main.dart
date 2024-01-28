class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team
  });

  void sayHello(){

    //만약 겹치는 변수에 대해 구분이 필요하면 전역 변수 시 this.name을 사용(This)
  }
}

void main() {
  var nico = Player(name: 'nico', xp: 12, team: 'red')
  ..name = 'las'
  ..xp = 1200000
  ..team = 'blue'
  ..sayHello();
  //이말은 변수 바인드를 완료하고 바로 클래스 내부함수까지 바로 호출한다는 뜻
}