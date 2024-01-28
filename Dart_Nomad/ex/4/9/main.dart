class Human {
  final String name;
  Human({required this.name});
  void sayHello(){
    print("hi my mane is $name");
  }
}

enum Team{ red, blue }

class Player extends Human {
  final Team team;
  Player({
    required this.team,
    required String name
  }) : super(name : name); // 이걸 명시해야 상위 클래스의 변수를 사용할 수 있다.
  
  @override
  void sayHello() {
    // TODO: implement sayHello
    super.sayHello(); // 상위 클래스의 메소드를 가져올 수 있음
    print('and I play fo ${team}');
  }
}

void main(){
  var player = Player(team: Team.red, name: 'nico');
}