class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson) :
    name = playerJson['name'],
    xp = playerJson['xp'],
    team = playerJson['team'];

  void sayHello(){

    //만약 겹치는 변수에 대해 구분이 필요하면 전역 변수 시 this.name을 사용(This)
  }
}

void main() {
  var apiData = [
    {
      "name":"nico",
      "team":"red",
      "xp":0,
    },   
    {
      "name":"nico",
      "team":"red",
      "xp":0,
    },    
    {
      "name":"nico",
      "team":"red",
      "xp":0,
    },
  ];

  apiData.forEach((playerJson) { 
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}