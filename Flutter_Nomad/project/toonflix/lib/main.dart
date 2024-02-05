import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const taxAmount = 15;
const priceAmount = 30;

var finalPrice = taxAmount + priceAmount;

class Player {
  String? name; //갖거나 가지지 않을 수도 있다.

  Player({required this.name});
}

void main() {
  var nico = Player(name: "potato");
  //runApp은 리턴이 없는 함수
  //위젯을 합치는 방식으로 화면을 만들어 내는 방식
  //앱 생성의 시작부분이다.
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  //statelessWidget은 widget을 상속받으므로 build를 구현해야함
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //머터리얼이나 쿠퍼티노를 리턴해줌
    return MaterialApp(
        home: Scaffold(
            // 화면의 구성이나 구조같은 것을 지정해주는 클래스
            //입력코드로 색상 입력 Color(0xFF181818)
            //Color.fromRGBO(255,255,255,255)
            backgroundColor: const Color(0xFF181818),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      //메인의 위치
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          //해당 Children의 위치
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, Selena',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$5 194 482',
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(45)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 50,
                            ),
                            child: Text(
                              'Transfer',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
            )));
  }
}
