mixin class Strong {
  final double strengthLevel = 1500.99;
  
}
mixin class QuickRunner {
  void runQuick(){
    print("runner");
  }
}
mixin class Tall {
  final double height = 1.99;

}

class Human {
  final String name;
  Human({required this.name});
  void sayHello(){
    print("hi my mane is $name");
  }
}

enum Team{ red, blue }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  }); // 이걸 명시해야 상위 클래스의 변수를 사용할 수 있다.
  
}
class Horse with Strong, QuickRunner {}
class Kid with QuickRunner {}
void main(){
  var player = Player(team: Team.red);
}